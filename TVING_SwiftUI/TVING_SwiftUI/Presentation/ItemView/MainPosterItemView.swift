//
//  MainPosterItemView.swift
//  TVING_SwiftUI
//
//  Created by 쏘 on 6/3/25.
//

import SwiftUI

struct MainPosterItemView: View {
    let item: MainPosterModel
    
    var body: some View {
        Image(uiImage: item.thumbnail)
            .resizable()
            .scaledToFill()
            .frame(width: UIScreen.main.bounds.width, height: 400)
    }
}
