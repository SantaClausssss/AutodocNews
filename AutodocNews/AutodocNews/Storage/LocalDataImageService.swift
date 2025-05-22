//
//  LocalDataImageService.swift
//  AutodocNews
//
//  Created by Санта Клаус on 21.05.2025.
//

import Foundation

struct LocalDataImageService: LocalDataImageServiceProtocol {
  private var dataStorage = NSCache<NSString, NSData>()
  
  func save(key: String, data: Data?) {
    guard let  data = data else { return }
    dataStorage.setObject(data as NSData, forKey: key as NSString)
  }
  
  func get(key: String) -> Data? {
    dataStorage.object(forKey: key as NSString) as? Data
  }
}
