//
//  ApiClientService + ApiClientServiceProtocol.swift
//  AutodocNews
//
//  Created by Санта Клаус on 21.05.2025.
//

import Foundation

extension ApiClientService: ApiClientServiceProtocol {
  func request<T: Decodable>(url: URL?, type: T.Type) async throws -> T {
    guard let url = url else { throw APIError.URLError }
    return try await makeRequest(url: url)
  }
}

private extension ApiClientService {
  func decodeModel<T: Decodable>(data: Data) throws -> T {
    let decoder = JSONDecoder()
    let model = try? decoder.decode(T.self, from: data)
    guard let model = model else { throw APIError.decodingError }
    return model
  }
  
  func validateResponse<T: Decodable>(
    request: (data: Data, httpResponse: URLResponse)
  ) throws -> T {
    guard let httpResponse = request.httpResponse as? HTTPURLResponse
    else { throw APIError.responseError }

    switch httpResponse.statusCode {
    case ResponseStatusCode.success:
      return try decodeModel(data: request.data)
    case ResponseStatusCode.clienteError:
      throw APIError.clientError
    case ResponseStatusCode.serverError:
      throw APIError.serverError
    default:
      throw APIError.unknownError
    }
  }
  
  func makeRequest<T: Decodable>(url: URL) async throws -> T {
    let request = try await session.data(from: url)
    return try validateResponse(request:request)
  }
}



