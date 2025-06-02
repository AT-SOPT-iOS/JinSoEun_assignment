//
//  PdPickView.swift
//  TVING_SwiftUI
//
//  Created by 쏘 on 6/3/25.
//

import SwiftUI

struct PdPickView: View {
    @State private var pdPickItems = PdPickModel.dummy()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 13) {
            Text("요아정PD의 인생작 TOP 5")
                .font(.title3)
                .bold()
                .foregroundColor(.white)
                .padding(.horizontal)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    ForEach(pdPickItems.indices, id: \.self) { index in PdPickItemView(item: pdPickItems[index])}
                }
            }
            .padding(.horizontal)
        }
    }
}
