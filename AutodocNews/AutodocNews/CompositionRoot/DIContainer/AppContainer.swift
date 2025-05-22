//
//  AppContainer.swift
//  AutodocNews
//
//  Created by Санта Клаус on 22.05.2025.
//

protocol AppContainerProtocol {
  var apiClient: ApiClientServiceProtocol & RemoteImageDataServiceProtocol { get }
  var localDataService: LocalDataImageService { get }
  func getDatsImageUseCase() -> ImageDataUseCase
}

struct AppContainer: AppContainerProtocol {
  var apiClient: ApiClientServiceProtocol & RemoteImageDataServiceProtocol = ApiClientService()
  
  var localDataService: LocalDataImageService = LocalDataImageService()
  
  func getDatsImageUseCase() -> ImageDataUseCase {
    let imageDataRepository = ImageDataRepository(
      remoteDataService: apiClient,
      localDataCache: localDataService
    )
    return ImageDataUseCase(imageDataRepository: imageDataRepository)
  }
}
