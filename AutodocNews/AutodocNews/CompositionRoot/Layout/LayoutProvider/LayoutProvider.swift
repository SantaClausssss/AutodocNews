//
//  LayoutProvider.swift
//  AutodocNews
//
//  Created by Санта Клаус on 22.05.2025.
//

import UIKit

fileprivate typealias Const = LayoutProviderConst

struct LayoutProvider {
  private let listLayoutFactory = ListLayoutFactory()
  
  func createListLayout(
    _ controller: AutodocNewsListViewController
  ) -> UICollectionViewLayout {
    let layout = UICollectionViewCompositionalLayout { sectionIndex, layoutEnvironment in
      let section = listLayoutFactory.createListLayout()
      return section
    }
    return layout
  }
}

// MARK: - Constants
private enum LayoutProviderConst {
  static let lineItemWidthDimension: CGFloat = 0.88
  static let headerItemWidthDimension: CGFloat = 0.92
  static let headerItemHeightDimension: CGFloat = 44.0
}
