//
//  UIImageView + extension.swift
//  AutodocNews
//
//  Created by Санта Клаус on 21.05.2025.
//

import UIKit

extension UIImageView {
  func setImageFromData(data: Data?) {
    if let data = data {
      if let image = UIImage(data: data) {
        self.image = image
      }
    }
  }
  
  func addDefaultImage() {
    image = UIImage(systemName: "gearshape.2")
  }
}
