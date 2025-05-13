//
//  BaseballViewController.swift
//  TVING
//
//  Created by 쏘 on 5/7/25.
//

import UIKit

import SnapKit
import Then

final class BaseballViewController: UIViewController {
  final let interItemSpacing: CGFloat = 0
  final let cellWidth: CGFloat = 80
  final let cellHeight: CGFloat = 50

  private var itemData = BaseballModel.dummy()

  private let collectionView: UICollectionView = {
    let layout = UICollectionViewFlowLayout()
    layout.scrollDirection = .horizontal
    let collectionView = UICollectionView(
      frame: .zero,
      collectionViewLayout: layout
    )
    return collectionView
  }()

  override func viewDidLoad() {
    super.viewDidLoad()

    setLayout()
    setDelegate()
    setRegister()
  }

  private func setLayout() {
    view.addSubview(collectionView)
    view.backgroundColor = .black
    collectionView.backgroundColor = .black

    collectionView.snp.makeConstraints {
      $0.top.leading.trailing.equalTo(view.safeAreaLayoutGuide)
      $0.height.equalTo(50)
    }
  }

  private func setDelegate() {
    collectionView.delegate = self
    collectionView.dataSource = self
  }

  private func setRegister() {
    collectionView.register(
      BaseballCollectionViewCell.self,
      forCellWithReuseIdentifier: BaseballCollectionViewCell.identifier
    )
  }
}

extension BaseballViewController: UICollectionViewDelegateFlowLayout {
  func collectionView(
    _: UICollectionView,
    layout _: UICollectionViewLayout,
    sizeForItemAt _: IndexPath
  ) -> CGSize {
    return CGSize(width: cellWidth, height: cellHeight)
  }

  func collectionView(
    _: UICollectionView,
    layout _: UICollectionViewLayout,
    minimumLineSpacingForSectionAt _: Int
  ) -> CGFloat {
    return interItemSpacing
  }
}

extension BaseballViewController: UICollectionViewDataSource {
  func collectionView(
    _: UICollectionView,
    numberOfItemsInSection _: Int
  ) -> Int {
    return itemData.count
  }

  func collectionView(
    _ collectionView: UICollectionView,
    cellForItemAt indexPath: IndexPath
  ) -> UICollectionViewCell {
    guard let cell = collectionView.dequeueReusableCell(
      withReuseIdentifier: BaseballCollectionViewCell.identifier,
      for: indexPath
    ) as? BaseballCollectionViewCell else { return BaseballCollectionViewCell() }
    cell.dataBind(itemData[indexPath.item])
    cell.setBackgroundColor(indexPath.item % 2 == 0)

    return cell
  }
}

#Preview {
  BaseballViewController()
}
