//
//  BaseView.swift
//  AutodocNews
//
//  Created by Санта Клаус on 21.05.2025.
//

import UIKit

class BaseView: UIView {
  init() {
    super.init(frame: .zero)
    initView()
  }
  
  required init?(coder: NSCoder) {
    fatalError(ErrorMessage.initCoderNotImplementedError)
  }
  
  func initView() { }
}
