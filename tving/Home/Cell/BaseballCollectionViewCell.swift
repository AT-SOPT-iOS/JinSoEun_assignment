//
//  BaseballCollectionViewCell.swift
//  TVING
//
//  Created by 쏘 on 5/7/25.
//

import UIKit
import SnapKit

class BaseballCollectionViewCell: UICollectionViewCell {
    static let identifier = "BaseballCollecitonViewCell"
    
    private let logo = UIImageView()
    private let baseView = UIView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setLayout()
        setUI()
    }
    
    required init?(coder:NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setLayout() {
        contentView.addSubviews(baseView)
        baseView.addSubview(logo)
        
        baseView.snp.makeConstraints{
            $0.edges.equalToSuperview()
        }
        
        logo.snp.makeConstraints{
            $0.center.equalToSuperview()
            $0.height.width.equalTo(40)
        }
    }
    
    private func setUI() {
        logo.contentMode = .scaleAspectFit
        logo.clipsToBounds = true
    }

}

extension BaseballCollectionViewCell {
    func dataBind(_ itemData: BaseballModel) {
        logo.image = itemData.logo
    }
    
    func setBackgroundColor(_ isEven: Bool) {
        baseView.backgroundColor = isEven ? .white: .black
    }
}

#Preview {
    BaseballCollectionView()
}
