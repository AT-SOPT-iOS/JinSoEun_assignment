//
//  UITextField+.swift
//  tving
//
//  Created by 쏘 on 4/22/25.
//

import UIKit

extension UITextField {
  func setPlaceholder(color: UIColor) {
    guard let string = placeholder else { return }
    attributedPlaceholder = NSAttributedString(string: string, attributes: [.foregroundColor: color])
  }
}
