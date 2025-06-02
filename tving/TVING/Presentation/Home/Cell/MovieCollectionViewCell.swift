//
//  MovieCollectionViewCell.swift
//  TVING
//
//  Created by 쏘 on 5/2/25.
//


import UIKit
import SnapKit

class MovieCollectionViewCell: UICollectionViewCell {
    static let identifier = "MovieCollectionViewCell"
    
    
    private let poster = UIImageView()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setLayout()
        setUI()
    }
    

    required init?(coder:NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setLayout() {
        backgroundColor = .black
        contentView.addSubview(poster)
        
        poster.snp.makeConstraints{
            $0.top.equalToSuperview()
            $0.leading.equalToSuperview()
            $0.bottom.equalToSuperview()
            $0.width.equalTo(98)
        }
    }
    
    private func setUI() {
        poster.layer.cornerRadius = 3
        poster.layer.masksToBounds = true
        poster.contentMode = .scaleAspectFill
        poster.clipsToBounds = true
    }
}

extension MovieCollectionViewCell {
    func dataBind(_ itemData: MovieModel) {
        poster.image = itemData.thumbnail
    }
}
