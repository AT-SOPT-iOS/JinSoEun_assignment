//
//  ChatCollectionViewCell.swift
//  TVING
//
//  Created by 쏘 on 5/2/25.
//

import UIKit
import SnapKit

class TodayTvingCollectionViewCell: UICollectionViewCell {
    static let identifier = "TodayTvingCollectionViewCell"
    
    private let poster = UIImageView()
    private let rankingLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.textAlignment = .center
        label.font = .pretendardExtraBold(size: 50)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setLayout()
        setUI()
    }
    
    required init?(coder:NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setLayout() {
        contentView.addSubviews(rankingLabel, poster)
        
        rankingLabel.snp.makeConstraints{
            $0.leading.equalToSuperview().inset(12)
            $0.bottom.equalToSuperview()
        }
        poster.snp.makeConstraints{
            $0.top.equalToSuperview()
            $0.leading.equalTo(rankingLabel.snp.trailing).offset(8)
            $0.bottom.equalToSuperview()
            $0.width.equalTo(130)
        }
    }
    
    private func setUI() {
        poster.layer.cornerRadius = 3
        poster.layer.masksToBounds = true
        poster.contentMode = .scaleAspectFill
        poster.clipsToBounds = true
    }
}

extension TodayTvingCollectionViewCell {
    func dataBind(_ itemData: TodayTvingModel) {
        rankingLabel.text = itemData.ranking
        poster.image = itemData.thumbnail
    }
}
