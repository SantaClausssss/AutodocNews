//
//  AutodocNewsListUseCase.swift
//  AutodocNews
//
//  Created by Санта Клаус on 21.05.2025.
//

final class AutodocNewsListUseCase: AutodocNewsListUseCaseProtocol {
  private let repository: AutodocNewsListRepositoryProtocol
  
  init(repository: AutodocNewsListRepositoryProtocol){
    self.repository = repository
  }
  
  func execute() async -> Result<[NewsItem], Error> {
    do {
      let repositoryResult = try await repository.fetchNews()
      return .success(repositoryResult)
    } catch {
      return .failure(error)
    }
  }
}
