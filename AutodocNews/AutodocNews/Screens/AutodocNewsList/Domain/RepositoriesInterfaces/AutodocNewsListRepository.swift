//
//  AutodocNewsListRepository.swift
//  AutodocNews
//
//  Created by Санта Клаус on 21.05.2025.
//

import Foundation

struct AutodocNewsListRepository: AutodocNewsListRepositoryProtocol {
  let apiClient: ApiClientServiceProtocol
  let urlString: String
  
  func fetchNews() async throws -> [NewsItem] {
    let url = URL(string: urlString)
    return try await apiClient.request(
      url: url,
      type: NewsResponseDTO.self).toDomain()
  }
}
