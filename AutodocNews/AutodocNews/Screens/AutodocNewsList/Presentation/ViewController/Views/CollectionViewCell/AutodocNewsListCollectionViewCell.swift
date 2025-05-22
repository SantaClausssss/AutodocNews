//
//  AutodocNewsListCollectionViewCell.swift
//  AutodocNews
//
//  Created by Санта Клаус on 21.05.2025.
//

import UIKit

typealias BaseAutodocNewsListCollectionViewCell = BaseColletionViewCell<AutodocNewsListCollectionViewCellRootView>

final class AutodocNewsListCollectionViewCell: BaseAutodocNewsListCollectionViewCell {
  private var task: Task<Void, Never>?
  
  override func prepareForReuse() {
    super.prepareForReuse()
    task?.cancel()
  }
  
  func configureCell(_ viewModelItem: AutodocNewsListViewModelItem, expanded: Bool) {
    rootView.titleLabel.text = viewModelItem.title
    rootView.descriptionLabel.text = viewModelItem.description
    rootView.descriptionLabel.isHidden = !expanded
    setImage(viewModelItem: viewModelItem)
    layoutIfNeeded()
  }
  
  private func setImage(viewModelItem: AutodocNewsListViewModelItem) {
    rootView.postImageView.addDefaultImage()
    if let data = viewModelItem.imageData {
      rootView.postImageView.setImageFromData(data: data)
    } else {
      task = Task {
        let dataImage = await viewModelItem.getImageData()
        rootView.postImageView.setImageFromData(data: dataImage)
      }
    }
  }
}
