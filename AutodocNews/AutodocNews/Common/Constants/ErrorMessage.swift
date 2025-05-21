//
//  ErrorMessage.swift
//  AutodocNews
//
//  Created by Санта Клаус on 21.05.2025.
//

import Foundation

enum ErrorMessage {
  static var initCoderNotImplementedError: String {
    "init(coder:) has not been implemented"
  }

  static var errorTemplate: String {
    "Expected view to be of type %@ but got %@ instead"
  }
}
