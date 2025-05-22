//
//  APIError.swift
//  AutodocNews
//
//  Created by Санта Клаус on 21.05.2025.
//

import Foundation

enum APIError: Error {
  case clientError
  case serverError
  case unknownError
  case responseError
  case URLError
  case decodingError
}

extension APIError: LocalizedError {
  var errorDescription: String? {
    switch self {
    case .clientError:
      return NSLocalizedString("Client error", comment: "")
    case .serverError:
      return NSLocalizedString("Server error", comment: "")
    case .unknownError:
      return NSLocalizedString("Unknown error", comment: "")
    case .responseError:
      return NSLocalizedString("Response error", comment: "")
    case .URLError:
      return NSLocalizedString("URL error", comment: "")
    case .decodingError:
      return NSLocalizedString("Decoding error", comment: "")
    }
  }
}
