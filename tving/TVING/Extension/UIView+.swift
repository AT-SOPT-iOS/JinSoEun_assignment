//
//  UIView+.swift
//  TVING
//
//  Created by 쏘 on 4/24/25.
//

import UIKit

extension UIView {
  func addSubviews(_ views: UIView...) {
    views.forEach { self.addSubview($0) }
  }
}
