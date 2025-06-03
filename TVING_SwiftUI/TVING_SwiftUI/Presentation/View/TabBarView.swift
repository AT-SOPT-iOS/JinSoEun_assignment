//
//  TabBarView.swift
//  TVING_SwiftUI
//
//  Created by 쏘 on 6/3/25.
//

import SwiftUI

struct TabBarView: View {
    let tabs = ["홈", "드라마", "예능", "영화", "스포츠", "뉴스"]
    @State private var selectedTab = "홈"
    
    
    var body: some View {
        HStack () {
            ForEach(tabs, id: \.self) { tab in
                Spacer()
                VStack {
                    Button(action: {
                        selectedTab = tab
                    }) {
                        Text(tab)
                            .font(.headline)
                            .foregroundColor(.white)
                    }
                    Rectangle()
                        .fill(selectedTab == tab ? Color.white : Color.clear)
                        .frame(width: 15, height: 3)
                        .padding(.top, 4)
                }
                Spacer()
            }
        }
        .padding(.vertical, 7)
    }
}
