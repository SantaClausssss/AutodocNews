//
//  AutodocNewsListViewController.swift
//  AutodocNews
//
//  Created by Санта Клаус on 21.05.2025.
//

import UIKit
import Combine

typealias BaseAutodocNewsListViewController = BaseViewController<AutodocNewsListViewControllerRootView>

final class AutodocNewsListViewController: BaseAutodocNewsListViewController {
  // MARK: Private Properties
  private(set) var viewModel: AutodocNewsListViewModelProtocol
  private var cancellable = Set<AnyCancellable>()
  var expandedIndexPath: IndexPath?
  
  init(
    viewModel: AutodocNewsListViewModelProtocol
  ) {
    self.viewModel = viewModel
    super.init(nibName: nil, bundle: nil)
  }
  
  required init?(coder: NSCoder) {
    fatalError(ErrorMessage.initCoderNotImplementedError)
  }
  
  // MARK: Life Cycle
  override func viewDidLoad() {
    super.viewDidLoad()
    setupCollectionViewDelegates()
    viewModel.viewDidLoad()
    stateController()
  }
  
  // MARK: Private Methods
  private func setupCollectionViewDelegates() {
    rootView.autodocNewsListCollectionView.delegate = self
    rootView.autodocNewsListCollectionView.dataSource = self
  }
  
  private func stateController() {
    viewModel
      .state
      .receive(on: RunLoop.main)
      .sink { [weak self] state in
        switch state {
        case .success:
          self?.rootView.autodocNewsListCollectionView.reloadData()
        case .loading:
          break
        case .fail(error: let error):
          self?.presentAlert(message: error)
        }
      }.store(in: &cancellable)
  }
}
