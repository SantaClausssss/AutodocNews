//
//  AppDelegate.swift
//  AutodocNews
//
//  Created by Санта Клаус on 21.05.2025.
//

import UIKit

@main
final class AppDelegate: UIResponder { }

// MARK: - UIApplicationDelegate
extension AppDelegate: UIApplicationDelegate {
  func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
      return true
  }

  // MARK: UISceneSession Lifecycle
  func application(
    _ application: UIApplication,
    configurationForConnecting connectingSceneSession: UISceneSession,
    options: UIScene.ConnectionOptions
  ) -> UISceneConfiguration {
      return UISceneConfiguration(
        name: "Default Configuration",
        sessionRole: connectingSceneSession.role
      )
  }

  func application(
    _ application: UIApplication,
    didDiscardSceneSessions sceneSessions: Set<UISceneSession>
  ) {
    
  }
}
