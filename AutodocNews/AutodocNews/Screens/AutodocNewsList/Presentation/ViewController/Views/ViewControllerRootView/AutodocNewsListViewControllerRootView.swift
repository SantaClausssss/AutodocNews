//
//  AutodocNewsListViewControllerRootView.swift
//  AutodocNews
//
//  Created by Санта Клаус on 21.05.2025.
//

import UIKit

final class AutodocNewsListViewControllerRootView: BaseView {
  // MARK: Views
  let autodocNewsListCollectionView: AutodocNewsListCollectionView = {
    return $0
  }(AutodocNewsListCollectionView())
  
  // MARK: Initializers
  override func initView() {
    setupViews()
  }

  // MARK: Setup Views
  private func setupViews() {
    addSubviews()
    setupConstraints()
  }
  
  private func addSubviews() {
    addSubview(autodocNewsListCollectionView)
  }
  
  private func setupConstraints() {
    autodocNewsListCollectionView.fillSuperView()
  }
}
