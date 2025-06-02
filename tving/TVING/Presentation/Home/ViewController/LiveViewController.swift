//
//  LiveViewController.swift
//  TVING
//
//  Created by 쏘 on 5/2/25.
//

import UIKit

import SnapKit

final class LiveViewController: UIViewController {
  final let interItemSpacing: CGFloat = 7
  final let cellWidth: CGFloat = 160
  final let cellHeight: CGFloat = 180

  private var itemData = LiveModel.dummy()

  private let collectionView: UICollectionView = {
    let layout = UICollectionViewFlowLayout()
    layout.scrollDirection = .horizontal
    let collectonView = UICollectionView(frame: .zero, collectionViewLayout: layout)
    return collectonView
  }()

  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .black

    setLayout()
    setDelegate()
    register()
  }

  private let titleLabel: UILabel = {
    let label = UILabel()
    label.text = "실시간 인기 LIVE"
    label.font = .pretendardBold(size: 20)
    label.textColor = .white
    return label
  }()

  private let expandLabel: UILabel = {
    let label = UILabel()
    label.text = "더보기"
    label.font = .pretendardRegular(size: 12)
    label.textColor = .gray2
    return label
  }()

  private func setLayout() {
    view.addSubviews(collectionView, titleLabel, expandLabel)
    view.backgroundColor = .black
    collectionView.backgroundColor = .black

    titleLabel.snp.makeConstraints {
      $0.leading.equalTo(self.view.safeAreaLayoutGuide)
      $0.top.equalTo(self.view.safeAreaLayoutGuide)
    }
    collectionView.snp.makeConstraints {
      $0.top.equalTo(titleLabel.snp.bottom).offset(9)
      $0.leading.trailing.equalTo(self.view.safeAreaLayoutGuide)
      $0.height.equalTo(200)
    }
    expandLabel.snp.makeConstraints {
      $0.top.trailing.equalTo(self.view.safeAreaLayoutGuide)
      $0.width.equalTo(44)
      $0.height.equalTo(20)
    }
  }

  private func register() {
    collectionView.register(LiveCollectionViewCell.self, forCellWithReuseIdentifier: LiveCollectionViewCell.identifier)
  }

  private func setDelegate() {
    collectionView.delegate = self
    collectionView.dataSource = self
  }
}

extension LiveViewController: UICollectionViewDelegateFlowLayout {
  func collectionView(_: UICollectionView, layout _: UICollectionViewLayout, sizeForItemAt _: IndexPath) -> CGSize {
    return CGSize(width: cellWidth, height: cellHeight)
  }

  func collectionView(_: UICollectionView, layout _: UICollectionViewLayout, minimumLineSpacingForSectionAt _: Int) -> CGFloat {
    return interItemSpacing
  }
}

extension LiveViewController: UICollectionViewDataSource {
  func collectionView(_: UICollectionView, numberOfItemsInSection _: Int) -> Int {
    return itemData.count
  }

  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: LiveCollectionViewCell.identifier, for: indexPath) as? LiveCollectionViewCell else { return LiveCollectionViewCell() }
    cell.dataBind(itemData[indexPath.item])
    return cell
  }
}

#Preview {
  LiveViewController()
}
