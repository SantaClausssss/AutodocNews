//
//  ImageDataRepositoryProtocol.swift
//  AutodocNews
//
//  Created by Санта Клаус on 21.05.2025.
//

import Foundation

protocol ImageDataRepositoryProtocol {
  func fetchData(url: URL?) async -> Data?
  func getFromCache(url: String?) -> Data?
}
