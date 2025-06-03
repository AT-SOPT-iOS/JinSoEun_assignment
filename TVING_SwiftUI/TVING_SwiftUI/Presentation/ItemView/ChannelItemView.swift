//
//  ChannelItemView.swift
//  TVING_SwiftUI
//
//  Created by 쏘 on 6/3/25.
//

import SwiftUI

struct ChannelItemView: View {
    let item: ChannelModel
    
    var body: some View {
        ZStack {
            Image(uiImage: item.logo)
                .resizable()
                .scaledToFit()
                .frame(width: 68, height: 34)
            Color.gray.opacity(0.2)
        }
        .frame(width: 90, height: 45)
        .cornerRadius(4)
    }
}
