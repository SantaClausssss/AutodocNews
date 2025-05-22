//
//  ApiClientService + RemoteImageDataServiceProtocol.swift
//  AutodocNews
//
//  Created by Санта Клаус on 21.05.2025.
//

import Foundation

extension ApiClientService: RemoteImageDataServiceProtocol {
  func request(url: URL?) async -> Data? {
    guard let url = url else { return nil }
    do {
      let response: NetworkResponse = try await session.data(from: url)
      return response.data
    } catch {
      return nil
    }
  }
}

private extension ApiClientService {
  typealias NetworkResponse = (data: Data, response: URLResponse)
}
