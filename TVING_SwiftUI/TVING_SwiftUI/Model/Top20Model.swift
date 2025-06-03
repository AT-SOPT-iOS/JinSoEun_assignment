//
//  Top20Model.swift
//  TVING_SwiftUI
//
//  Created by 쏘 on 6/3/25.
//

import UIKit

struct Top20Model {
  let ranking: String
  let thumbnail: UIImage
}

extension Top20Model {
  static func dummy() -> [Top20Model] {
    return [
      Top20Model(ranking: "1", thumbnail: .poster1),
      Top20Model(ranking: "2", thumbnail: .poster2),
      Top20Model(ranking: "3", thumbnail: .poster3),
      Top20Model(ranking: "4", thumbnail: .poster4),
      Top20Model(ranking: "5", thumbnail: .poster5),
      Top20Model(ranking: "6", thumbnail: .poster6),
      Top20Model(ranking: "7", thumbnail: .poster7),
      Top20Model(ranking: "8", thumbnail: .poster8),
      Top20Model(ranking: "9", thumbnail: .poster9),
      Top20Model(ranking: "10", thumbnail: .poster10),
      Top20Model(ranking: "11", thumbnail: .poster1),
      Top20Model(ranking: "12", thumbnail: .poster2),
      Top20Model(ranking: "13", thumbnail: .poster3),
      Top20Model(ranking: "14", thumbnail: .poster4),
      Top20Model(ranking: "15", thumbnail: .poster5),
      Top20Model(ranking: "16", thumbnail: .poster6),
      Top20Model(ranking: "17", thumbnail: .poster7),
      Top20Model(ranking: "18", thumbnail: .poster8),
      Top20Model(ranking: "19", thumbnail: .poster9),
      Top20Model(ranking: "20", thumbnail: .poster10),
    ]
  }
}
