//
//  GahyunPickCollectionViewCell.swift
//  TVING
//
//  Created by 쏘 on 5/7/25.
//

import SnapKit
import UIKit

class GahyunPickCollectionViewCell: UICollectionViewCell {
  static let identifier = "GahyunPickCollectionViewCell"

  private let thumbnail = UIImageView()

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
    backgroundColor = .black
    contentView.addSubview(thumbnail)

    thumbnail.snp.makeConstraints {
      $0.top.equalToSuperview()
      $0.leading.equalToSuperview()
      $0.bottom.equalToSuperview()
      $0.width.equalTo(160)
    }
  }

  private func setUI() {
    thumbnail.layer.cornerRadius = 3
    thumbnail.layer.masksToBounds = true
    thumbnail.contentMode = .scaleAspectFill
    thumbnail.clipsToBounds = true
  }
}

extension GahyunPickCollectionViewCell {
  func dataBind(_ itemData: GahyunPickModel) {
    thumbnail.image = itemData.thumbnail
  }
}
