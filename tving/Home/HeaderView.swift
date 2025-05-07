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
    
    
    private let tabMenuStackView = UIStackView()
    
    private let indicateBar = UIView()
    private let homeLabel = UILabel()
    private let dramaLabel = UILabel()
    private let varietyLabel = UILabel()
    private let movieLabel = UILabel()
    private let sportsLabel = UILabel()
    private let newsLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUI()
        setLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUI() {
        
        self.backgroundColor = .black
        
        topStackView.do {
            $0.axis = .horizontal
            $0.spacing = 10
            $0.alignment = .center
            $0.distribution = .fill
        }
        
        tabMenuStackView.do {
            $0.axis = .horizontal
            $0.alignment = .center
            $0.distribution = .equalSpacing
        }
        
        logoImg.image = .mainLogo
        searchButton.setImage(.searchIcon, for: .normal)
        profileButton.setImage(.profileIcon, for: .normal)
        
        indicateBar.do {
            $0.backgroundColor = .white
        }
        
        homeLabel.do {
            $0.text = "홈"
            $0.tabMenuStyle()
        }
        
        dramaLabel.do {
            $0.text = "드라마"
            $0.tabMenuStyle()
        }
        
        varietyLabel.do {
            $0.text = "예능"
            $0.tabMenuStyle()
        }
        
        movieLabel.do {
            $0.text = "영화"
            $0.tabMenuStyle()
        }
        
        sportsLabel.do {
            $0.text = "스포츠"
            $0.tabMenuStyle()
        }
        
        newsLabel.do {
            $0.text = "뉴스"
            $0.tabMenuStyle()
        }
        
    }
    
    private func setLayout() {
        self.addSubviews(topStackView, tabMenuStackView, indicateBar)
        topStackView.addArrangedSubviews(logoImg, UIView(), searchButton, profileButton)
        
        tabMenuStackView.addArrangedSubviews(homeLabel, dramaLabel, varietyLabel, movieLabel, sportsLabel, newsLabel)
        
        topStackView.snp.makeConstraints {
            $0.top.leading.trailing.equalTo(self.safeAreaLayoutGuide)
        }
        
        tabMenuStackView.snp.makeConstraints {
            $0.top.equalTo(topStackView.snp.bottom)
            $0.leading.trailing.equalTo(self.safeAreaLayoutGuide)
        }
        
        searchButton.snp.makeConstraints {
            $0.width.height.equalTo(30)
        }
        
        profileButton.snp.makeConstraints {
            $0.width.height.equalTo(30)
        }
        
        indicateBar.snp.makeConstraints {
            $0.leading.trailing.equalTo(homeLabel)
            $0.top.equalTo(homeLabel.snp.bottom).offset(7)
            $0.height.equalTo(3)
        }
        
        homeLabel.snp.makeConstraints {

            $0.height.equalTo(27)
        }
        
        dramaLabel.snp.makeConstraints {

            $0.height.equalTo(27)
        }
        
        varietyLabel.snp.makeConstraints {

            $0.height.equalTo(27)
        }
        
        movieLabel.snp.makeConstraints {

            $0.height.equalTo(27)
        }
        
        sportsLabel.snp.makeConstraints {

            $0.height.equalTo(27)
        }
        
        newsLabel.snp.makeConstraints {

            $0.height.equalTo(27)
        }
    }
}

#Preview {
    HeaderView()
}


extension UILabel {
    func tabMenuStyle() {
        self.textColor = .white
        self.font = .pretendardRegular(size: 17)
    }
}
