//
//  FooterView.swift
//  TVING_SwiftUI
//
//  Created by 쏘 on 6/3/25.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack (alignment: .leading){
            ZStack{
                Rectangle()
                    .foregroundColor(.secondary)
                    .cornerRadius(5)
                HStack {
                    Text("공지")
                        .font(.caption)
                        .foregroundColor(.gray)
                    Text("티빙 계정 공유 정책 추가 안내")
                        .font(.caption)
                        .foregroundColor(.white)
                    Spacer()
                    Image("ic_detail")
                        .resizable()
                        .frame(width: 18, height: 18)
                }
                .padding(.horizontal, 17)
            }
            .frame(width: .infinity, height: 50)
            .padding(.vertical, 13)
            
            
            HStack {
                Text("고객문의")
                    .font(.caption2)
                    .foregroundColor(.gray)
                Text("·")
                    .font(.caption2)
                    .foregroundColor(.gray)
                Text("이용약관")
                    .font(.caption2)
                    .foregroundColor(.gray)
                Text("·")
                    .font(.caption2)
                    .foregroundColor(.gray)
                Text("개인정보처리방침")
                    .font(.caption2)
                    .foregroundColor(.white)
            }
            
            HStack {
                Text("사업자정보")
                    .font(.caption2)
                    .foregroundColor(.gray)
                Text("·")
                    .font(.caption2)
                    .foregroundColor(.gray)
                Text("인재채용")
                    .font(.caption2)
                    .foregroundColor(.gray)
            }
        }
        .padding(.horizontal, 16)
        .padding(.bottom, 50)
    }
}
