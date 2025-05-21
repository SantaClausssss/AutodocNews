//
//  ViewLoadable.swift
//  AutodocNews
//
//  Created by Санта Клаус on 21.05.2025.
//

import UIKit

protocol ViewLoadable {
  associatedtype RootView: UIView
  func resolveRootView() -> RootView?
}

extension ViewLoadable {
  var rootView: RootView {
    guard let customView = resolveRootView() else {
      fatalError(errorMessage)
    }
    return customView
  }
}

// MARK: - UIViewController
extension ViewLoadable where Self: UIViewController {
  func resolveRootView() -> RootView? {
    return view as? RootView
  }
}

// MARK: - UICollectionViewCell
extension ViewLoadable where Self: UICollectionViewCell {
  func resolveRootView() -> RootView? {
    return contentView.subviews.first as? RootView
  }
}

// MARK: - Error
private extension ViewLoadable {
  var errorMessage: String {
    String(
      format: ErrorMessage.errorTemplate,
      String(describing: RootView.self),
      String(describing: resolveRootViewType())
    )
  }
  
  func resolveRootViewType() -> Any.Type {
    guard let resolvedView = resolveRootView() else {
      return UIView.self
    }
    return type(of: resolvedView)
  }
}
