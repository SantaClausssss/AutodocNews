//
//  AutodocNewsListViewController + UICollectionViewDelegate.swift
//  AutodocNews
//
//  Created by Санта Клаус on 21.05.2025.
//

import UIKit

extension AutodocNewsListViewController: UICollectionViewDelegate {
  func collectionView(
    _ collectionView: UICollectionView,
    didSelectItemAt indexPath: IndexPath
  ) {
    let previouslyExpanded = expandedIndexPath
    expandedIndexPath = (expandedIndexPath == indexPath) ? nil : indexPath
    var indexPathsToReload = [indexPath]
    if let prev = previouslyExpanded, prev != indexPath {
      indexPathsToReload.append(prev)
    }
    collectionView.performBatchUpdates({
      collectionView.reloadItems(at: indexPathsToReload)
    }, completion: nil)
  }
}
