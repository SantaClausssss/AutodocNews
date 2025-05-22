//
//  ResponseStatusCode.swift
//  AutodocNews
//
//  Created by Санта Клаус on 21.05.2025.
//

enum ResponseStatusCode {
  static let success = 200...299
  static let clienteError = 400...499
  static let serverError = 500...599
}
