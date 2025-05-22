//
//  ImageDataUseCase.swift
//  AutodocNews
//
//  Created by Санта Клаус on 22.05.2025.
//

import Foundation

struct ImageDataUseCase: ImageDataUseCaseProtocol {
  private(set) var imageDataRepository: ImageDataRepositoryProtocol
  
  func getData(url: URL?) async -> Data? {
    await imageDataRepository.fetchData(url: url)
  }
  
  func getDataFromCache(url: String?) -> Data? {
    imageDataRepository.getFromCache(url: url)
  }
}
