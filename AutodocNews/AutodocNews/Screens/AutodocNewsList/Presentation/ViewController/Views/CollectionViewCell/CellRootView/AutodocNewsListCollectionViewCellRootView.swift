//
//  AutodocNewsListCollectionViewCellRootView.swift
//  AutodocNews
//
//  Created by Санта Клаус on 21.05.2025.
//

import UIKit

final class AutodocNewsListCollectionViewCellRootView: BaseView {
  // MARK: Views
  let postImageView: UIImageView = {
    $0.layer.cornerRadius = Const.postImageCornerRadius
    $0.tintColor = .systemGray5
    $0.contentMode = .scaleAspectFill
    $0.clipsToBounds = true
    NSLayoutConstraint.activate([
      $0.heightAnchor.constraint(equalToConstant: Const.postImageHeight)
    ])
    return $0
  }(UIImageView())
  
  let titleLabel: UILabel = {
    $0.font = Const.boldFont
    $0.numberOfLines = .zero
    return $0
  }(UILabel())
  
  let descriptionLabel: UILabel = {
    $0.font = Const.regularFont
    $0.numberOfLines = .zero
    return $0
  }(UILabel())
  
  let separateView: UIView = {
    $0.backgroundColor = .systemGray4
    NSLayoutConstraint.activate([
      $0.heightAnchor.constraint(equalToConstant: Const.separateViewHeight)
    ])
    return $0
  }(UILabel())
  
  private lazy var postStackView: UIStackView = {
    $0.axis = .vertical
    $0.spacing = Const.postStackViewSpacing
    $0.addArrangedSubview(separateView)
    $0.addArrangedSubview(postImageView)
    $0.addArrangedSubview(titleLabel)
    $0.addArrangedSubview(descriptionLabel)
    return $0
  }(UIStackView())
  
  // MARK: Init
  override func initView() {
    setupViews()
  }

  // MARK: Private Methods
  private func setupViews() {
    addSubviews()
    setupConstraints()
  }
  
  private func addSubviews() {
    addSubview(postStackView)
  }
  
  private func setupConstraints() {
    postStackView.fillSuperView()
  }
}

// MARK: - Constants
private extension AutodocNewsListCollectionViewCellRootView {
  typealias Const = AutodocNewsListCollectionViewCellRootViewConst
}

