//
//  MainPosterViewController.swift
//  TVING
//
//  Created by 쏘 on 5/8/25.
//

import UIKit

import SnapKit

final class MainPosterViewController: UIViewController {
  final let interItemSpacing: CGFloat = 0
  final let cellWidth = UIScreen.main.bounds.width
  final let cellHeight: CGFloat = 400

  private var itemData = MainPosterModel.dummy()

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

  private func setLayout() {
    view.addSubview(collectionView)
    view.backgroundColor = .black
    collectionView.isPagingEnabled = true
    collectionView.backgroundColor = .black

    collectionView.snp.makeConstraints {
      $0.top.leading.trailing.equalTo(self.view.safeAreaLayoutGuide)
      $0.height.equalTo(400)
    }
  }

  private func register() {
    collectionView.register(MainPosterCollectionViewCell.self, forCellWithReuseIdentifier: MainPosterCollectionViewCell.identifier)
  }

  private func setDelegate() {
    collectionView.delegate = self
    collectionView.dataSource = self
  }
}

extension MainPosterViewController: UICollectionViewDelegateFlowLayout {
  func collectionView(_: UICollectionView, layout _: UICollectionViewLayout, sizeForItemAt _: IndexPath) -> CGSize {
    return CGSize(width: cellWidth, height: cellHeight)
  }

  func collectionView(_: UICollectionView, layout _: UICollectionViewLayout, minimumLineSpacingForSectionAt _: Int) -> CGFloat {
    return interItemSpacing
  }
}

extension MainPosterViewController: UICollectionViewDataSource {
  func collectionView(_: UICollectionView, numberOfItemsInSection _: Int) -> Int {
    return itemData.count
  }

  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MainPosterCollectionViewCell.identifier, for: indexPath) as? MainPosterCollectionViewCell else { return MainPosterCollectionViewCell() }
    cell.dataBind(itemData[indexPath.item])
    return cell
  }
}

#Preview {
  MainPosterViewController()
}
