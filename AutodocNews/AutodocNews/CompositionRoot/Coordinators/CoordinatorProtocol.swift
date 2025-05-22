//
//  CoordinatorProtocol.swift
//  AutodocNews
//
//  Created by Санта Клаус on 21.05.2025.
//

import UIKit

protocol Coordinator {
  var navigation: UINavigationController { get }
  func start()
}
