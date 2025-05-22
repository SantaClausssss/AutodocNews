//
//  AppCordinator.swift
//  AutodocNews
//
//  Created by Санта Клаус on 21.05.2025.
//

import UIKit

final class AppCoordinator: Coordinator {
  var navigation: UINavigationController
  private let appFactory: AppFactoryProtocol
  private var homeCoordinator: (any Coordinator)?
  
  init(
    navigation: UINavigationController,
    appFactory: AppFactoryProtocol,
    window: UIWindow?
  ) {
    self.navigation = navigation
    self.appFactory = appFactory
    configWindow(window: window)
  }
  
  
  func start() {
    homeCoordinator = appFactory.makeAutodocNewsListCoordinator(
      navigation: navigation
    )
    homeCoordinator?.start()
  }
  
  private func configWindow(window: UIWindow?) {
    window?.rootViewController = navigation
    window?.makeKeyAndVisible()
  }
}
