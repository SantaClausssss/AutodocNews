//
//  AutodocNewsListUseCaseProtocol.swift
//  AutodocNews
//
//  Created by Санта Клаус on 21.05.2025.
//

protocol AutodocNewsListUseCaseProtocol {
  func execute() async -> Result<[NewsItem], Error>
}
