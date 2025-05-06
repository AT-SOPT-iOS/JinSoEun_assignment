//
//  ChannelModel.swift
//  TVING
//
//  Created by 쏘 on 5/7/25.
//

import UIKit

struct ChannelModel {
    let logo: UIImage
}

extension ChannelModel {
    static func dummy() -> [ChannelModel] {
        return [
            ChannelModel(logo: .kbo),
            ChannelModel(logo: .kbl),
            ChannelModel(logo: .afc),
            ChannelModel(logo: .apple),
            ChannelModel(logo: .kbo),
            ChannelModel(logo: .kbl),
            ChannelModel(logo: .afc),
            ChannelModel(logo: .apple)
        ]
    }
}
