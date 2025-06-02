//
//  MovieView.swift
//  TVING_SwiftUI
//
//  Created by 쏘 on 6/3/25.
//

import SwiftUI

struct MovieView: View {
    @State private var movieItems = MovieModel.dummy()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Text("실시간 인기 영화")
                    .font(.title3)
                    .bold()
                    .foregroundColor(.white)
                    .padding(.horizontal)
                Spacer()
                Text("더보기")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            .padding(.horizontal, 10)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    ForEach(movieItems.indices, id: \.self) { index in
                        MovieItemView(item: movieItems[index])
                    }
                }
                .padding(.horizontal)
            }
        }
        .padding(.top, 20)
    }
}
