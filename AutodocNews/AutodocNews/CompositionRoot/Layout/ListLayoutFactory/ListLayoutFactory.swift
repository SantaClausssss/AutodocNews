//
//  ListLayoutFactory.swift
//  AutodocNews
//
//  Created by Санта Клаус on 22.05.2025.
//

import UIKit

fileprivate typealias Const = ListLayoutFactoryConst

struct ListLayoutFactory {
  func createListLayout() -> NSCollectionLayoutSection {
    let item = makeItem()
    let group = makeGroup(item: item)
    let section = makeSection(group: group)
    return section
  }
  
  private func makeItem() -> NSCollectionLayoutItem {
    let itemSize = NSCollectionLayoutSize(
      widthDimension: .fractionalWidth(Const.itemWidthDimension),
      heightDimension: .estimated(Const.estimatedCellHeight)
    )
    let item = NSCollectionLayoutItem(layoutSize: itemSize)
    item.edgeSpacing = NSCollectionLayoutEdgeSpacing(
      leading: .fixed(Const.smallValue),
      top: .fixed(Const.mediumValue),
      trailing: .fixed(Const.smallValue),
      bottom: .fixed(Const.smallValue)
    )
    return item
  }
  
  private func makeGroup(item: NSCollectionLayoutItem) -> NSCollectionLayoutGroup {
    let groupSize = NSCollectionLayoutSize(
      widthDimension: .fractionalWidth(Const.groupWidthDimension),
      heightDimension: .estimated(Const.estimatedCellHeight)
    )
    let group = NSCollectionLayoutGroup.vertical(
      layoutSize: groupSize,
      subitems: [item]
    )
    return group
  }
  
  private func makeSection(group: NSCollectionLayoutGroup) -> NSCollectionLayoutSection {
    let section = NSCollectionLayoutSection(group: group)
    section.contentInsets = NSDirectionalEdgeInsets(
      top: Const.topSection,
      leading: Const.smallValue,
      bottom: Const.bottomSection,
      trailing: Const.smallValue
    )
    section.interGroupSpacing = Const.smallValue
    return section
  }
}

// MARK: - Constants
private enum ListLayoutFactoryConst {
  static let smallValue: CGFloat = 4.0
  static let mediumValue: CGFloat = 20.0
  static let topSection: CGFloat = 6.0
  static let bottomSection: CGFloat = smallValue * 5
  static let itemWidthDimension: CGFloat = 0.98
  static let estimatedCellHeight: CGFloat = 250.0
  static let groupWidthDimension: CGFloat = 1
}
