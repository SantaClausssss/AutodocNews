//
//  BaseCollectionView.swift
//  AutodocNews
//
//  Created by Санта Клаус on 21.05.2025.
//

import UIKit

class BaseCollectionView: UICollectionView {
  let flowlayout = UICollectionViewFlowLayout()
  
  init() {
    super.init(frame: .zero, collectionViewLayout: flowlayout)
    configureLayout()
    cellRegister()
  }
  
  required init?(coder: NSCoder) {
    fatalError(ErrorMessage.initCoderNotImplementedError)
  }
  
  func cellRegister() { }
  
  func configureLayout() {
    flowlayout.scrollDirection = .vertical
  }
}
