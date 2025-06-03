//
//  MainHeaderView.swift
//  TVING_SwiftUI
//
//  Created by 쏘 on 6/3/25.
//

import SwiftUI

struct MainHeaderView: View {
    var body: some View {
        HStack(alignment: .center) {
            Image(uiImage: .mainLogo)
                .resizable()
                .frame(width: 191, height: 78)
            
            Spacer()
            
            Image("ic_search")
                .resizable()
                .frame(width: 30, height: 30)
            
            Image("ic_profile")
                .resizable()
                .frame(width: 30, height: 30)
        }
    }
}
