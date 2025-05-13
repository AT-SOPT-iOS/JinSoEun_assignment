//
//  MovieModel.swift
//  TVING
//
//  Created by 쏘 on 5/7/25.
//

import UIKit

struct MovieModel {
  let thumbnail: UIImage
}

extension MovieModel {
  static func dummy() -> [MovieModel] {
    return [
      MovieModel(thumbnail: .poster10),
      MovieModel(thumbnail: .poster1),
      MovieModel(thumbnail: .poster3),
      MovieModel(thumbnail: .poster4),
      MovieModel(thumbnail: .poster5),
      MovieModel(thumbnail: .poster6),
      MovieModel(thumbnail: .poster7),
      MovieModel(thumbnail: .poster8),
      MovieModel(thumbnail: .poster9),
      MovieModel(thumbnail: .poster10),
    ]
  }
}
