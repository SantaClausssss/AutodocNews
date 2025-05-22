//
//  AutodocNewsListViewController + UICollectionViewDataSource.swift
//  AutodocNews
//
//  Created by Санта Клаус on 21.05.2025.
//

import UIKit

extension AutodocNewsListViewController: UICollectionViewDataSource {
  func collectionView(
    _ collectionView: UICollectionView,
    numberOfItemsInSection section: Int
  ) -> Int {
    viewModel.itemCount
  }
  
  func collectionView(
    _ collectionView: UICollectionView,
    cellForItemAt indexPath: IndexPath
  ) -> UICollectionViewCell {
    guard let cell = collectionView.dequeueReusableCell(
      withReuseIdentifier: AutodocNewsListCollectionViewCell.reuseID,
      for: indexPath
    ) as? AutodocNewsListCollectionViewCell
    else {
      return UICollectionViewCell()
    }
    let row = indexPath.row
    let expanded = (indexPath == expandedIndexPath)
    let viewModelItem = viewModel.getViewModelItem(row: row)
    cell.configureCell(viewModelItem, expanded: expanded)
    return cell
  }
}
