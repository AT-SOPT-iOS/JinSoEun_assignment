//
//  BaseballModel.swift
//  TVING
//
//  Created by 쏘 on 5/7/25.
//

import UIKit

struct BaseballModel {
    let logo: UIImage
}


extension BaseballModel {
    static func dummy() -> [BaseballModel] {
        return [
            BaseballModel(logo: .landers),
            BaseballModel(logo: .dusan),
            BaseballModel(logo: .hanhwa),
            BaseballModel(logo: .lg),
            BaseballModel(logo: .lotte),
            BaseballModel(logo: .kt),
            BaseballModel(logo: .kia),
            BaseballModel(logo: .nc),
            BaseballModel(logo: .kiwoom),
            BaseballModel(logo: .samsung)
            
        ]
    }
}
