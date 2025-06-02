//
//  UIFont+.swift
//  TVING
//
//  Created by 쏘 on 4/25/25.
//

import UIKit

extension UIFont {
  enum pretendardFontName: String {
    case medium = "Pretendard-Medium"
    case regular = "Pretendard-Regular"
    case bold = "Pretendard-Bold"
    case light = "Pretendard-Light"
    case extraBold = "Pretendard-ExtraBold"
  }

  class func pretendardMedium(size: CGFloat) -> UIFont {
    return UIFont(name: pretendardFontName.medium.rawValue, size: size)!
  }

  class func pretendardBold(size: CGFloat) -> UIFont {
    return UIFont(name: pretendardFontName.bold.rawValue, size: size)!
  }

  class func pretendardRegular(size: CGFloat) -> UIFont {
    return UIFont(name: pretendardFontName.regular.rawValue, size: size)!
  }

  class func pretendardLight(size: CGFloat) -> UIFont {
    return UIFont(name: pretendardFontName.light.rawValue, size: size)!
  }

  class func pretendardExtraBold(size: CGFloat) -> UIFont {
    return UIFont(name: pretendardFontName.extraBold.rawValue, size: size)!
  }
}
