//
//  AutodocNewsListRepositoryProtocol.swift
//  AutodocNews
//
//  Created by Санта Клаус on 21.05.2025.
//

protocol AutodocNewsListRepositoryProtocol {
  func fetchNews() async throws -> [NewsItem]
}
