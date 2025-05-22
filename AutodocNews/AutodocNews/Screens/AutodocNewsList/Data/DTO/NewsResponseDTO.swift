//
//  NewsResponseDTO.swift
//  AutodocNews
//
//  Created by Санта Клаус on 21.05.2025.
//

struct NewsResponseDTO: Decodable {
  let news: [NewsItemDTO]
}

// MARK: - Mapping DTO
extension NewsResponseDTO {
  func toDomain() -> [NewsItem] {
    return news.map {
      NewsItem(
        title: $0.title,
        description: $0.description,
        titleImageUrl: $0.titleImageUrl
      )
    }
  }
}
