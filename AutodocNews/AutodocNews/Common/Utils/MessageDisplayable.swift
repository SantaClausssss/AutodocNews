//
//  MessageDisplayable.swift
//  AutodocNews
//
//  Created by Санта Клаус on 21.05.2025.
//

import UIKit

protocol MessageDisplayable { }

extension MessageDisplayable where Self: UIViewController {
  func presentAlert(message: String) {
    let alertController = UIAlertController(
      title: Const.errorTitle,
      message: message,
      preferredStyle: .alert
    )
    let okAction = UIAlertAction(title: Const.okButtonTitle, style: .default)
    alertController.addAction(okAction)
    self.present(alertController, animated: true)
  }
}

// MARK: - Const
private enum Const {
  static let okButtonTitle = "Ok"
  static let errorTitle = "Error"
}
