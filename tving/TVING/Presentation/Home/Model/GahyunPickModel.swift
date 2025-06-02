//
//  GahyunPickModel.swift
//  TVING
//
//  Created by 쏘 on 5/7/25.
//

import UIKit

struct GahyunPickModel {
  let thumbnail: UIImage
}

extension GahyunPickModel {
  static func dummy() -> [GahyunPickModel] {
    return [
      GahyunPickModel(thumbnail: .live4),
      GahyunPickModel(thumbnail: .live5),
      GahyunPickModel(thumbnail: .live3),
      GahyunPickModel(thumbnail: .live6),
      GahyunPickModel(thumbnail: .live2),
    ]
  }
}
