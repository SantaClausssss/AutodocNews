//
//  SceneDelegate.swift
//  AutodocNews
//
//  Created by Санта Клаус on 21.05.2025.
//

import UIKit

final class SceneDelegate: UIResponder {
  var window: UIWindow?
}

// MARK: - UIWindowSceneDelegate
extension SceneDelegate: UIWindowSceneDelegate {
  func scene(
    _ scene: UIScene,
    willConnectTo session: UISceneSession,
    options connectionOptions: UIScene.ConnectionOptions
  ) {
    configWindow(with: scene)
  }
}

// MARK: - Config Window
private extension SceneDelegate {
  func configWindow(with scene: UIScene) {
    guard let windowScene = scene as? UIWindowScene else { return }
    window = UIWindow(windowScene: windowScene)
    window?.rootViewController = ViewController()
    window?.makeKeyAndVisible()
  }
}
