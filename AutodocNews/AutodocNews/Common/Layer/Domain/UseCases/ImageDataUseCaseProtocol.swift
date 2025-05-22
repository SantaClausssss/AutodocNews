//
//  ImageDataUseCaseProtocol.swift
//  AutodocNews
//
//  Created by Санта Клаус on 21.05.2025.
//

import Foundation

protocol ImageDataUseCaseProtocol {
  func getData(url: URL?) async -> Data?
  func getDataFromCache(url: String?) -> Data?
}
