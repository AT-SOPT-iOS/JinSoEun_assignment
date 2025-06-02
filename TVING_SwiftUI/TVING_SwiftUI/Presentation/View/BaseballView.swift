//
//  BaseballView.swift
//  TVING_SwiftUI
//
//  Created by 쏘 on 6/3/25.
//

import SwiftUI

struct BaseballView: View {
    @State private var baseballItem = BaseballModel.dummy()
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(baseballItem.indices, id: \.self) { index in BaseballItemView(item: baseballItem[index], isEven: index % 2 == 0)
                }
            }
        }
    }
}
