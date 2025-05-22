//
//  AutodocNewsListCollectionView.swift
//  AutodocNews
//
//  Created by Санта Клаус on 21.05.2025.
//

import UIKit

final class AutodocNewsListCollectionView: BaseCollectionView {
  override func cellRegister() {
    register(
      AutodocNewsListCollectionViewCell.self,
      forCellWithReuseIdentifier: AutodocNewsListCollectionViewCell.reuseID
    )
  }
}
