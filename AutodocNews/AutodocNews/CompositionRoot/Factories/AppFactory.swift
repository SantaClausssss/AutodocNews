//
//  AppFactory.swift
//  AutodocNews
//
//  Created by Санта Клаус on 22.05.2025.
//

import UIKit

protocol AppFactoryProtocol {
  func makeAutodocNewsListCoordinator(
    navigation: UINavigationController
  ) -> Coordinator
}

struct AppFactory: AppFactoryProtocol {
  
  let appContainer = AppContainer()
  
  func makeAutodocNewsListCoordinator(
    navigation: UINavigationController
  ) -> Coordinator {
    let autodocNewsListFactory = AutodocNewsListFactory(
      appContainer: appContainer
    )
    let autodocNewsListCoordinator = AutodocNewsListCoordinator(
      navigation: navigation,
      factory: autodocNewsListFactory
    )
    return autodocNewsListCoordinator
  }
}
