//
//  HomeView.swift
//  TVING_SwiftUI
//
//  Created by 쏘 on 6/3/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(spacing: 0) {
            ScrollView {
                VStack(spacing: 10) {
                    Top20SectionView()
                    LiveView()
                    MovieView()
                    BaseballView()
                }
            }
        }
        .background(Color.black)
    }
}

#Preview {
    HomeView()
}
