//
//  LiveCollecitonView.swift
//  TVING
//
//  Created by 쏘 on 5/2/25.
//

import UIKit
import SnapKit



final class LiveCollectionView : UIViewController {
    
    final let interItemSpacing: CGFloat = 7
    final let cellHeight: CGFloat = 150
    
    private var itemData = LiveModel.dummy()
    
    private let collectionView : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectonView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        return collectonView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .black
        
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
        self.view.addSubviews(collectionView, titleLabel, expandLabel)
        self.view.backgroundColor = .black
        collectionView.backgroundColor = .black
        
        titleLabel.snp.makeConstraints{
            $0.leading.equalTo(self.view.safeAreaLayoutGuide)
            $0.top.equalTo(self.view.safeAreaLayoutGuide)
        }
        collectionView.snp.makeConstraints{
            $0.top.equalTo(titleLabel.snp.bottom).offset(9)
            $0.leading.trailing.equalTo(self.view.safeAreaLayoutGuide)
            $0.height.equalTo(200)
        }
        expandLabel.snp.makeConstraints{
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

extension LiveCollectionView: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 178, height: 178)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return interItemSpacing
    }
}

extension LiveCollectionView : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: LiveCollectionViewCell.identifier, for: indexPath) as? LiveCollectionViewCell else { return LiveCollectionViewCell() }
        cell.dataBind(itemData[indexPath.item])
        return cell
    }
}

#Preview {
    LiveCollectionView()
}


