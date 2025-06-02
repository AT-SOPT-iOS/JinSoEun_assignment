//
//  Top20View.swift
//  TVING_SwiftUI
//
//  Created by 쏘 on 6/3/25.
//
import SwiftUI

struct Top20SectionView: View {
    @State private var top20Items = Top20Model.dummy()

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Text("오늘의 티빙 TOP 20")
                    .font(.title3)
                    .bold()
                    .foregroundColor(.white)
                    .padding(.horizontal)
                Spacer()
                Text("더보기")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            .padding(.horizontal, 10)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(top20Items.indices, id: \.self) { index in
                        Top20ItemView(item: top20Items[index])
                    }
                }
                .padding(.horizontal)
            }
        }
        .padding(.top, 20)
    }
}

#Preview {
    Top20SectionView()
}
