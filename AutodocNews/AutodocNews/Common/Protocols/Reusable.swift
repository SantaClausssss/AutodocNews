//
//  Reusable.swift
//  AutodocNews
//
//  Created by Санта Клаус on 21.05.2025.
//

protocol Reusable: AnyObject { }

extension Reusable {
  static var reuseID: String {
    return String(describing: self)
  }
}
