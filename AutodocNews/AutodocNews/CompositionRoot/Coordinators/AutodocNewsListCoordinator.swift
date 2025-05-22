//
//  AutodocNewsList.swift
//  AutodocNews
//
//  Created by Санта Клаус on 21.05.2025.
//

import UIKit

final class AutodocNewsListCoordinator: Coordinator {
  var navigation: UINavigationController
  private var factory: AutodocNewsListFactoryProtocol
  
  init(
    navigation: UINavigationController,
    factory: AutodocNewsListFactoryProtocol
  ) {
    self.navigation = navigation
    self.factory = factory
  }
  
  func start() {
    let controller = factory.makeModule(coordinator: self)
    navigation.navigationBar.prefersLargeTitles = true
    navigation.pushViewController(controller, animated: true)
  }
}
