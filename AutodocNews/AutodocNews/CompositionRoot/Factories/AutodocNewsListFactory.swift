//
//  AutodocNewsListFactory.swift
//  AutodocNews
//
//  Created by Санта Клаус on 22.05.2025.
//

import Combine
import UIKit

protocol AutodocNewsListFactoryProtocol {
  func makeModule(
    coordinator: AutodocNewsListCoordinator
  ) -> AutodocNewsListViewController
}

struct AutodocNewsListFactory: AutodocNewsListFactoryProtocol {
  
  let appContainer: AppContainer
  private let layoutProvider = LayoutProvider()
  
  func makeModule(
    coordinator: AutodocNewsListCoordinator
  ) -> AutodocNewsListViewController {
    let apiClientService = ApiClientService()
    let repository = AutodocNewsListRepository(
      apiClient: apiClientService,
      urlString: Endpoint.baseUrl
    )
    let useCase = AutodocNewsListUseCase(repository: repository)
    let state = PassthroughSubject<StateController, Never>()
    let viewModel = AutodocNewsListViewModel(
      state: state,
      useCase: useCase,
      imageDataUseCase: appContainer.getDatsImageUseCase()
    )
    let controller = AutodocNewsListViewController(viewModel: viewModel)
    controller.title = "News"
    setupLayouts(controller)
    return controller
  }
  
  private func setupLayouts(_ controller: AutodocNewsListViewController) {
    let newsListLayout = layoutProvider.createListLayout(controller)
    controller.rootView.autodocNewsListCollectionView.collectionViewLayout = newsListLayout
  }
}
