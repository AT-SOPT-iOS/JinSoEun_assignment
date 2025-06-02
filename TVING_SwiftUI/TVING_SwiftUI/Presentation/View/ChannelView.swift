//
//  ChannelView.swift
//  TVING_SwiftUI
//
//  Created by 쏘 on 6/3/25.
//

import SwiftUI

struct ChannelView: View {
    @State private var channelItem = ChannelModel.dummy()
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(channelItem.indices, id: \.self) { index in ChannelItemView(item: channelItem[index])
                }
            }
        }
        .padding(.leading, 15)
    }
}
