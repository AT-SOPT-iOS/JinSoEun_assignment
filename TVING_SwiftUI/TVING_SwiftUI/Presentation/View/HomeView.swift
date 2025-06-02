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
                VStack(spacing: 28) {
                    Top20SectionView()
                    LiveView()
                    MovieView()
                    BaseballView()
                    ChannelView()
                    PdPickView()
                }
            }
        }
        .background(Color.black)
    }
}

#Preview {
    HomeView()
}
