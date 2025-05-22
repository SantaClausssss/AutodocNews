//
//  AutodocNewsListViewModel.swift
//  AutodocNews
//
//  Created by Санта Клаус on 21.05.2025.
//

import Combine

protocol AutodocNewsListViewModelProtocol: BaseViewModel {
  var itemCount: Int { get }
  func getViewModelItem(row: Int) -> AutodocNewsListViewModelItem
}

final class AutodocNewsListViewModel: AutodocNewsListViewModelProtocol {
  // MARK: Internal Properties
  var state: PassthroughSubject<StateController, Never>
  var itemCount: Int { autodocNewsItems.count }
  
  // MARK: Private Properties
  private var autodocNewsItems: [NewsItem] = []
  private let useCase: AutodocNewsListUseCaseProtocol
  private var imageDataUseCase: ImageDataUseCaseProtocol
  
  // MARK: Init
  init(
    state: PassthroughSubject<StateController, Never>,
    useCase: AutodocNewsListUseCaseProtocol,
    imageDataUseCase: ImageDataUseCaseProtocol
  ) {
    self.state = state
    self.useCase = useCase
    self.imageDataUseCase = imageDataUseCase
  }
  
  // MARK: Internal Methods
  func viewDidLoad() {
    state.send(.loading)
    Task {
      await loadNewsItemsUseCase()
    }
  }
  
  
  // MARK: Private Methods
  private func loadNewsItemsUseCase() async{
    let resultUseCase = await useCase.execute()
    updateStateUI(resultUseCase: resultUseCase)
  }
  
  private func updateStateUI(resultUseCase: Result<[NewsItem], Error>) {
    switch resultUseCase {
    case .success(let itemsArray):
      autodocNewsItems.append(contentsOf: itemsArray)
      state.send(.success)
    case .failure(let error):
      state.send(.fail(error: error.localizedDescription))
    }
  }
  
  func getViewModelItem(row: Int) -> AutodocNewsListViewModelItem {
    return makeAutodocNewsListViewModelItem(row: row)
  }
  
  private func makeAutodocNewsListViewModelItem(
    row: Int
  ) -> AutodocNewsListViewModelItem {
    let autodocNewsItem = autodocNewsItems[row]
    return AutodocNewsListViewModelItem(
      newsItem: autodocNewsItem,
      dataImageUseCase: imageDataUseCase
    )
  }
}
