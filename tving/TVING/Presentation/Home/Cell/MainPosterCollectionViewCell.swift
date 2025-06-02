//
//  MainPosterCollectionViewCell.swift
//  TVING
//
//  Created by 쏘 on 5/8/25.
//

import SnapKit
import UIKit

class MainPosterCollectionViewCell: UICollectionViewCell {
  static let identifier = "MainPosterCollectionViewCell"

  private let poster = UIImageView()

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
    contentView.addSubview(poster)

    poster.snp.makeConstraints {
      $0.leading.trailing.top.bottom.equalToSuperview()
//            $0.width.equalTo(98)
    }
  }

  private func setUI() {
//        poster.layer.cornerRadius = 3
    poster.layer.masksToBounds = true
    poster.contentMode = .scaleAspectFill
    poster.clipsToBounds = true
  }
}

extension MainPosterCollectionViewCell {
  func dataBind(_ itemData: MainPosterModel) {
    poster.image = itemData.thumbnail
  }
}
