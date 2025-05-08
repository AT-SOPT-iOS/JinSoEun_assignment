//
//  MainPosterModel.swift
//  TVING
//
//  Created by 쏘 on 5/8/25.
//


import UIKit

struct MainPosterModel {
    let thumbnail: UIImage
}

extension MainPosterModel {
    static func dummy() -> [MainPosterModel] {
        return [
            MainPosterModel(thumbnail: .poster10),
            MainPosterModel(thumbnail: .poster1),
            MainPosterModel(thumbnail: .poster3),
            MainPosterModel(thumbnail: .poster4),
            MainPosterModel(thumbnail: .poster5),
            MainPosterModel(thumbnail: .poster6),
            MainPosterModel(thumbnail: .poster7),
            MainPosterModel(thumbnail: .poster8),
            MainPosterModel(thumbnail: .poster9),
            MainPosterModel(thumbnail: .poster10)
        ]
    }
}
