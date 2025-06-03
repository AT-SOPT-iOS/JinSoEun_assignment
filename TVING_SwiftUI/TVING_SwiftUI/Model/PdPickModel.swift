//
//  PdPickModel.swift
//  TVING_SwiftUI
//
//  Created by 쏘 on 6/3/25.
//

import UIKit

struct PdPickModel {
  let thumbnail: UIImage
}

extension PdPickModel {
  static func dummy() -> [PdPickModel] {
    return [
      PdPickModel(thumbnail: .live4),
      PdPickModel(thumbnail: .live5),
      PdPickModel(thumbnail: .live3),
      PdPickModel(thumbnail: .live6),
      PdPickModel(thumbnail: .live2),
    ]
  }
}
