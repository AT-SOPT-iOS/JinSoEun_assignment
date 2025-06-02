//
//  PdPickItemView.swift
//  TVING_SwiftUI
//
//  Created by 쏘 on 6/3/25.
//

import SwiftUI

struct PdPickItemView: View {
    let item: PdPickModel
    
    var body: some View {
        HStack {
            Image(uiImage: item.thumbnail)
                .resizable()
                .scaledToFill()
                .frame(width: 160, height: 90)
                .cornerRadius(3)
        }
    }
}
