//
//  MovieItemView.swift
//  TVING_SwiftUI
//
//  Created by 쏘 on 6/3/25.
//

import SwiftUI

struct MovieItemView: View {
    let item: MovieModel
    
    var body: some View {
        Image(uiImage: item.thumbnail)
            .resizable()
            .scaledToFill()
            .frame(width: 98, height: 146)
            .cornerRadius(3)
    }
}
