//
//  ApiClientService.swift
//  AutodocNews
//
//  Created by Санта Клаус on 21.05.2025.
//

import Foundation

struct ApiClientService {
  let session: URLSession
  
  init(session: URLSession = URLSession.shared) {
    self.session = session
  }
}
