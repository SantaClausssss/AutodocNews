//
//  ApiClientServiceProtocol.swift
//  AutodocNews
//
//  Created by Санта Клаус on 21.05.2025.
//

import Foundation

protocol ApiClientServiceProtocol {
  func request<T: Decodable>(url: URL?, type: T.Type) async throws -> T
}
