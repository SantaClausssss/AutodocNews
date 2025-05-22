//
//  RemoteImageDataServiceProtocol.swift
//  AutodocNews
//
//  Created by Санта Клаус on 21.05.2025.
//

import Foundation

protocol RemoteImageDataServiceProtocol {
  func request(url: URL?) async -> Data?
}
