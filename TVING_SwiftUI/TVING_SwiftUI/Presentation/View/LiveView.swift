//
//  LiveView.swift
//  TVING_SwiftUI
//
//  Created by 쏘 on 6/3/25.
//

import SwiftUI

struct LiveView: View {
    @State private var liveItems = LiveModel.dummy()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Text("실시간 인기 LIVE")
                    .font(.title3)
                    .bold()
                    .foregroundColor(.white)
                    .padding(.horizontal)
                Spacer()
                Text("더보기")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            .padding(.trailing, 10)
            
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 8) {
                    ForEach(liveItems.indices, id: \.self) { index in LiveItemView(item: liveItems[index])
                    }
                }
                .padding(.horizontal)
            }
        }
        .padding(.top, 20)
    }
}


#Preview {
    LiveView()
}
