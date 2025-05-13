//
//  LiveCollectionViewCell.swift
//  TVING
//
//  Created by 쏘 on 5/3/25.
//

import SnapKit
import UIKit

class LiveCollectionViewCell: UICollectionViewCell {
  static let identifier = "LiveCollectionViewCell"

  private let thumbnail = UIImageView()
  private let ranking = UILabel()
  private let title = UILabel()
  private let detail = UILabel()
  private let rating = UILabel()

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
    contentView.addSubviews(thumbnail, ranking, title, detail, rating)

    thumbnail.snp.makeConstraints {
      $0.leading.top.equalToSuperview()
      $0.height.equalTo(80)
      $0.width.equalTo(160)
    }

    ranking.snp.makeConstraints {
      $0.leading.equalToSuperview().inset(6)
      $0.top.equalTo(thumbnail.snp.bottom).offset(10)
      $0.height.equalTo(30)
      $0.width.equalTo(12)
    }

    title.snp.makeConstraints {
      $0.leading.equalTo(ranking.snp.trailing).offset(7)
      $0.trailing.equalTo(thumbnail.snp.trailing)
      $0.top.equalTo(thumbnail.snp.bottom).offset(13)
      $0.height.equalTo(16)
    }

    detail.snp.makeConstraints {
      $0.leading.equalTo(title.snp.leading)
      $0.trailing.equalTo(title.snp.trailing)
      $0.top.equalTo(title.snp.bottom)
      $0.height.equalTo(16)
    }

    rating.snp.makeConstraints {
      $0.leading.equalTo(title.snp.leading)
      $0.trailing.equalTo(title.snp.trailing)
      $0.top.equalTo(detail.snp.bottom)
      $0.height.equalTo(16)
    }
  }

  private func setUI() {
    thumbnail.layer.cornerRadius = 3
    thumbnail.layer.masksToBounds = true
    thumbnail.contentMode = .scaleAspectFill
    thumbnail.clipsToBounds = true

    ranking.textColor = .white
    ranking.font = .pretendardBold(size: 19)

    title.textColor = .white
    title.font = .pretendardRegular(size: 10)

    detail.textColor = .gray2
    detail.font = .pretendardLight(size: 10)

    rating.textColor = .gray2
    rating.font = .pretendardLight(size: 10)
  }
}

extension LiveCollectionViewCell {
  func dataBind(_ itemData: LiveModel) {
    thumbnail.image = itemData.thumbnail
    ranking.text = itemData.ranking
    title.text = itemData.name
    detail.text = itemData.detail
    rating.text = itemData.rating
  }
}

#Preview {
  LiveViewController()
}
