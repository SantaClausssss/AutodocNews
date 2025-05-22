//
//  ImageDataRepository.swift
//  AutodocNews
//
//  Created by Санта Клаус on 21.05.2025.
//

import Foundation

struct ImageDataRepository: ImageDataRepositoryProtocol {
  private(set) var remoteDataService: RemoteImageDataServiceProtocol
  private(set) var localDataCache: LocalDataImageServiceProtocol
  
  func fetchData(url: URL?) async -> Data? {
    let data =  await remoteDataService.request(url: url)
    localDataCache.save(key: url?.absoluteString ?? "", data: data)
    return data
  }
  
  func getFromCache(url: String?) -> Data? {
    localDataCache.get(key: url ?? "")
  }
}
