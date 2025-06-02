//
//  PdPickModel.swift
//  TVING_SwiftUI
//
//  Created by 쏘 on 6/3/25.
//

import UIKit

struct PdPick {
  let thumbnail: UIImage
}

extension PdPick {
  static func dummy() -> [PdPick] {
    return [
      PdPick(thumbnail: .live4),
      PdPick(thumbnail: .live5),
      PdPick(thumbnail: .live3),
      PdPick(thumbnail: .live6),
      PdPick(thumbnail: .live2),
    ]
  }
}
