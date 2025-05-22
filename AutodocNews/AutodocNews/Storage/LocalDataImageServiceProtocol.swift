//
//  LocalDataImageServiceProtocol.swift
//  AutodocNews
//
//  Created by Санта Клаус on 21.05.2025.
//

import Foundation

protocol LocalDataImageServiceProtocol {
  func save(key: String, data: Data?)
  func get(key: String) -> Data?
}
