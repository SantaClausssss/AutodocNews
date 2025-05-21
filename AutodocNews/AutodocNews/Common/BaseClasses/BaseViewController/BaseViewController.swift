//
//  BaseViewController.swift
//  AutodocNews
//
//  Created by Санта Клаус on 21.05.2025.
//

import UIKit

class BaseViewController<ViewType: UIView>: UIViewController {
  
  typealias RootView = ViewType
  
  override func loadView() {
    let customView = RootView()
    view = customView
  }
}

// MARK: - ViewLoadable
extension BaseViewController: ViewLoadable { }
