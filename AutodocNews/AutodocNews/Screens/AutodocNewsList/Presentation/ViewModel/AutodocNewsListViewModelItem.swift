//
//  AutodocNewsListViewModelItem.swift
//  AutodocNews
//
//  Created by Санта Клаус on 21.05.2025.
//

import Foundation

struct AutodocNewsListViewModelItem {
  private(set) var newsItem: NewsItem
  private(set) var dataImageUseCase: ImageDataUseCaseProtocol
  
  var title: String {
    newsItem.title
  }
  
  var description: String {
    newsItem.description
  }
  
  var imageData: Data? {
    dataImageUseCase.getDataFromCache(url: newsItem.titleImageUrl)
  }
  
  func getImageData() async -> Data? {
    let url = URL(string: newsItem.titleImageUrl ?? "")
    return await dataImageUseCase.getData(url: url)
  }
}
