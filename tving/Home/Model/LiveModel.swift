//
//  LiveModel.swift
//  TVING
//
//  Created by 쏘 on 5/2/25.
//

import UIKit

struct LiveModel {
    let thumbnail: UIImage
    let ranking: String
    let name: String
    let detail: String
    let rating: String
}

extension LiveModel {
    static func dummy() -> [LiveModel] {
        return [
            LiveModel(thumbnail: .live1, ranking: "1", name: "별들에게 물어봐", detail: "14화", rating: "27.5%"),
            LiveModel(thumbnail: .live2, ranking: "2", name: "선재 업고 튀어", detail: "2화", rating: "17.3%"),
            LiveModel(thumbnail: .live3, ranking: "3", name: "환승연애", detail: "시즌2 7화", rating: "10.9%"),
            LiveModel(thumbnail: .live4, ranking: "4", name: "지구오락실", detail: "시즌3 1화", rating: "7.8%"),
            LiveModel(thumbnail: .live5, ranking: "5", name: "언젠가는 슬기로울 전공의생활", detail: "1화", rating: "3.2%"),
            LiveModel(thumbnail: .live6, ranking: "6", name: "이혼숙려캠프", detail: "14화", rating: "3.0%"),
            LiveModel(thumbnail: .live1, ranking: "7", name: "별들에게 물어봐", detail: "14화", rating: "2.5%"),
            LiveModel(thumbnail: .live2, ranking: "8", name: "선재 업고 튀어", detail: "2화", rating: "1.3%"),
            LiveModel(thumbnail: .live3, ranking: "9", name: "환승연애", detail: "시즌2 7화", rating: "1.0%"),
            LiveModel(thumbnail: .live4, ranking: "10", name: "지구오락실", detail: "시즌3 1화", rating: "0.8%")
        ]
    }
}
 
