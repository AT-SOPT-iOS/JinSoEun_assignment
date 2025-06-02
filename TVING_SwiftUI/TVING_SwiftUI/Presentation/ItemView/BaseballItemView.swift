//
//  BaseballItemView.swift
//  TVING_SwiftUI
//
//  Created by 쏘 on 6/3/25.
//

import SwiftUI

struct BaseballItemView: View {
    let item: BaseballModel
    let isEven: Bool
    
    var body: some View {
        ZStack {
            (isEven ? Color.white : Color.black)
            
            Image(uiImage: item.logo)
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40)
        }
        .frame(width: 80, height: 50)
    }
}

