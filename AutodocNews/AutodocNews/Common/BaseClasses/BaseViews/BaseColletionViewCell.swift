//
//  BaseColletionViewCell.swift
//  AutodocNews
//
//  Created by Санта Клаус on 21.05.2025.
//

import UIKit

class BaseColletionViewCell<ViewType: UIView>: UICollectionViewCell {
  typealias RootView = ViewType

  override init(frame: CGRect) {
    super.init(frame: frame)
    initCell()
  }

  required init?(coder: NSCoder) {
    fatalError(ErrorMessage.initCoderNotImplementedError)
  }
  
  func initCell() {
    let rootView = RootView()
    contentView.addSubview(rootView)
    rootView.fillSuperView()
  }
}

// MARK: - ViewLoadable
extension BaseColletionViewCell: ViewLoadable { }

