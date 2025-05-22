//
//  BaseViewModel.swift
//  AutodocNews
//
//  Created by Санта Клаус on 21.05.2025.
//

import Combine

protocol BaseViewModel {
  var state: PassthroughSubject<StateController, Never> { get }
  func viewDidLoad()
}
