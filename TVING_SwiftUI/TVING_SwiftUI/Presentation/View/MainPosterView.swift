//
//  MainPosterView.swift
//  TVING_SwiftUI
//
//  Created by 쏘 on 6/3/25.
//

import SwiftUI

struct MainPosterView: View {
    @State private var posterItems = MainPosterModel.dummy()
    
    init() {
        UIPageControl.appearance().isHidden = true
    }
    
    var body: some View {
        TabView {
            ForEach(posterItems.indices, id: \.self) { index in MainPosterItemView(item: posterItems[index])
                
            }
        }
        .tabViewStyle(.page)
        .frame(height: 400)
    }
}
