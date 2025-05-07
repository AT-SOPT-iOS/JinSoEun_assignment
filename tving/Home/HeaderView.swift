//
//  HeaderView.swift
//  TVING
//
//  Created by 쏘 on 5/7/25.
//

import UIKit

import SnapKit
import Then

final class HeaderView: UIView {
    
    private let topStackView = UIStackView()
    
    private let logoImg = UIImageView()
    private let searchButton = UIButton()
    private let profileButton = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUI()
        setLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUI() {
        
        topStackView.do {
            $0.axis = .horizontal
            $0.spacing = 10
            $0.alignment = .center
            topStackView.distribution = .fill
        }
        
        logoImg.image = .mainLogo
        searchButton.setImage(.searchIcon, for: .normal)
        profileButton.setImage(.profileIcon, for: .normal)
        
        
    }
    
    private func setLayout() {
        self.addSubviews(topStackView)
        topStackView.addArrangedSubviews(logoImg, UIView(), searchButton, profileButton)
        self.backgroundColor = .black
        
        topStackView.snp.makeConstraints {
            $0.top.leading.trailing.equalTo(self.safeAreaLayoutGuide)
        }
    
        
        searchButton.snp.makeConstraints {
            $0.width.height.equalTo(30)
        }
        
        profileButton.snp.makeConstraints {
            $0.width.height.equalTo(30)
        }
    }
}

#Preview {
    HeaderView()
}
