//
//  FooterView.swift
//  TVING
//
//  Created by 쏘 on 5/7/25.
//

import UIKit
import SnapKit
import Then

final class FooterView: UIView {
    
    private let noticeView = UIView()
    private let noticeLabel = UILabel()
    private let noticeDetailLabel = UILabel()
    private let noticeDetailButton = UIButton()
    
    private let policyStackView = UIStackView()
    
    private let customerStackView = UIStackView()
    private let customerSupport = UILabel()
    private let termsOfServiceLabel = UILabel()
    private let privacyPolicyLabel = UILabel()
    
    private let businessStackView = UIStackView()
    private let businessInfoLabel = UILabel()
    private let recruitLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUI()
        setLayout()
    }
    
    required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    
    private func setUI() {
        noticeView.do {
            $0.backgroundColor = .baseGray
            $0.layer.cornerRadius = 5
        }
        
        noticeLabel.do {
            $0.text = "공지"
            $0.textColor = .footerGray
            $0.font = .pretendardRegular(size: 11)
        }
        
        noticeDetailLabel.do {
            $0.text = "티빙 계정 공유 정책 추가 안내"
            $0.textColor = .gray1
            $0.font = .pretendardRegular(size: 11)
        }
        
        noticeDetailButton.do {
            $0.setImage(.detailArrow, for: .normal)
        }
        
        policyStackView.do {
            $0.axis = .vertical
            $0.alignment = .leading
        }

        customerStackView.do {
            $0.configureAsFooterRow()
        }
        
        businessStackView.do {
            $0.configureAsFooterRow()
        }
        
        customerSupport.do {
            $0.text = "고객문의"
            $0.textColor = .footerGray
            $0.font = .pretendardRegular(size: 11)
        }
        
        termsOfServiceLabel.do {
            $0.text = "이용약관"
            $0.textColor = .footerGray
            $0.font = .pretendardRegular(size: 11)
        }
        
        privacyPolicyLabel.do {
            $0.text = "개인정보처리방침"
            $0.textColor = .gray1
            $0.font = .pretendardRegular(size: 11)
        }
        
        businessInfoLabel.do {
            $0.text = "사업자정보"
            $0.textColor = .footerGray
            $0.font = .pretendardRegular(size: 11)
        }
        
        recruitLabel.do {
            $0.text = "인재채용"
            $0.textColor = .footerGray
            $0.font = .pretendardRegular(size: 11)
        }
    }
    
    private func setLayout() {
        self.addSubviews(noticeView, policyStackView)
        noticeView.addSubviews(noticeLabel, noticeDetailLabel, noticeDetailButton)
        policyStackView.addArrangedSubviews(customerStackView, businessStackView)
        customerStackView.addArrangedSubviews(customerSupport,makeDot(), termsOfServiceLabel, makeDot(), privacyPolicyLabel)
        businessStackView.addArrangedSubviews(businessInfoLabel, makeDot(), recruitLabel)
        
        noticeView.snp.makeConstraints{
            $0.leading.trailing.top.equalToSuperview()
//            $0.width.equalTo(347)
            $0.height.equalTo(50)
        }
        
        noticeLabel.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.leading.equalToSuperview().offset(17)
        }
        
        noticeDetailLabel.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.leading.equalTo(noticeLabel.snp.trailing).offset(8)
        }
        
        noticeDetailButton.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.trailing.equalToSuperview().inset(16)
            $0.height.width.equalTo(18)
        }
        
        policyStackView.snp.makeConstraints {
            $0.top.equalTo(noticeView.snp.bottom).offset(13)
            $0.leading.trailing.equalTo(self.safeAreaLayoutGuide)
            $0.height.equalTo(36)
        }
        
    }
    
    func makeDot() -> UILabel {
        let dot = UILabel()
        dot.text = "·"
        dot.font = .systemFont(ofSize: 12)
        dot.textColor = .footerGray
        return dot
    }
}

#Preview {
    FooterView()
}

extension UIStackView {
    func configureAsFooterRow() {
            self.axis = .horizontal
            self.spacing = 3
            self.alignment = .center
        }
}
