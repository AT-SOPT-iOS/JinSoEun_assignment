//
//  UIStackView+.swift
//  TVING
//
//  Created by 쏘 on 4/24/25.
//

import UIKit

extension UIStackView {
    func addArrangedSubviews(_ views: UIView...) {
        views.forEach { self.addArrangedSubview($0) }
    }
}
