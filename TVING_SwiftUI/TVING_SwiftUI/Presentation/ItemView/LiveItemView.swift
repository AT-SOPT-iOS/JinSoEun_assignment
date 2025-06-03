//
//  LiveItemView.swift
//  TVING_SwiftUI
//
//  Created by 쏘 on 6/3/25.
//

import SwiftUI

struct LiveItemView: View {
    let item: LiveModel
    
    var body: some View {
        VStack (alignment: .leading, spacing: 8){
            Image(uiImage: item.thumbnail)
                .resizable()
                .scaledToFill()
                .frame(width: 160, height: 80)
                .cornerRadius(3)
            
            HStack(alignment: .top, spacing: 8){
                Text(item.ranking)
                    .font(.system(size: 19, weight: .bold, design: .default))
                    .italic(true)
                    .foregroundColor(.white)
                VStack(alignment: .leading) {
                    Text(item.name)
                        .font(.caption)
                        .foregroundColor(.white)
                    Text(item.detail)
                        .font(.caption2)
                        .foregroundColor(.gray)
                    Text(item.rating)
                        .font(.caption2)
                        .foregroundColor(.gray)
                }
            }
        }
    }
}
