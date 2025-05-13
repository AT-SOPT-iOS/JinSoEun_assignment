//
//  ChannelCollectionViewCell.swift
//  TVING
//
//  Created by 쏘 on 5/7/25.
//

import SnapKit
import UIKit

class ChannelCollectionViewCell: UICollectionViewCell {
  static let identifier = "ChannelCollectionViewCell"

  private let logo = UIImageView()
  private let baseView = UIView()

  override init(frame: CGRect) {
    super.init(frame: frame)
    setLayout()
    setUI()
  }

  @available(*, unavailable)
  required init?(coder _: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  private func setLayout() {
    contentView.addSubviews(baseView)
    baseView.addSubview(logo)

    baseView.snp.makeConstraints {
      $0.edges.equalToSuperview()
    }

    logo.snp.makeConstraints {
      $0.center.equalToSuperview()
      $0.height.equalTo(34)
      $0.width.equalTo(68)
    }
  }

  private func setUI() {
    baseView.backgroundColor = .baseGray
    baseView.layer.cornerRadius = 4

    logo.contentMode = .scaleAspectFill
    logo.clipsToBounds = true
  }
}

extension ChannelCollectionViewCell {
  func dataBind(_ itemData: ChannelModel) {
    logo.image = itemData.logo
  }
}

#Preview {
  ChannelViewController()
}
