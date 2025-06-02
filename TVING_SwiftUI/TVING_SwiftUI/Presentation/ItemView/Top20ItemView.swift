//
//  Top20ItemView.swift
//  TVING_SwiftUI
//
//  Created by 쏘 on 6/3/25.
//

import SwiftUI

struct Top20ItemView: View {
    let item: Top20Model
    
    var body: some View {
        
        HStack(alignment: .bottom, spacing: 8) {
            VStack {
                Spacer()
                Text(item.ranking)
                    .font(.system(size: 50, weight: .bold, design: .default))
                    .italic(true)
                    .foregroundColor(.white)
            }
            .frame(width: 40)
            
            Image(uiImage: item.thumbnail)
                .resizable()
                .scaledToFill()
                .frame(width: 120, height: 180)
                .cornerRadius(3)
        }
        .frame(width: 160, height: 180)
    }
}
#Preview {
    Top20ItemView(item: .init(ranking: "1", thumbnail: .poster1))
}
