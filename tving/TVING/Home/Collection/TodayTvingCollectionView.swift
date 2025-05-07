//
//  TodayTvingCollectionView.swift
//  TVING
//
//  Created by 쏘 on 5/2/25.
//

import UIKit
import SnapKit
import Then

final class TodayTvingCollectionView : UIViewController {
    
    final let interItemSpacing: CGFloat = 12
    final let cellHeight: CGFloat = 146
    
    private var itemData = TodayTvingModel.dummy()
    
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
    
//    private let label = UILabel()
//    
//    private func setUI() {
//        numberLabel.do{
//            $0.label
//        }
//    }
    
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "오늘의 티빙 TOP 20"
        label.font = .pretendardBold(size: 20)
        label.textColor = .white
        return label
    }()
    
    private func setLayout() {
        self.view.addSubviews(collectionView, titleLabel)
        self.view.backgroundColor = .black
        collectionView.backgroundColor = .black
        
        titleLabel.snp.makeConstraints{
            $0.leading.trailing.equalTo(self.view.safeAreaLayoutGuide)
            $0.top.equalTo(self.view.safeAreaLayoutGuide)
        }
        collectionView.snp.makeConstraints{
            $0.top.equalTo(titleLabel.snp.bottom).offset(9)
            $0.leading.trailing.equalTo(self.view.safeAreaLayoutGuide)
            $0.height.equalTo(200)
        }
    }
    
    private func register() {
        collectionView.register(TodayTvingCollectionViewCell.self, forCellWithReuseIdentifier: TodayTvingCollectionViewCell.identifier)
    }
    
    private func setDelegate() {
        collectionView.delegate = self
        collectionView.dataSource = self
    }
}

extension TodayTvingCollectionView: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 178, height: 178)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return interItemSpacing
    }
}

extension TodayTvingCollectionView : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TodayTvingCollectionViewCell.identifier, for: indexPath) as? TodayTvingCollectionViewCell else { return TodayTvingCollectionViewCell() }
        cell.dataBind(itemData[indexPath.item])
        return cell
    }
}




#Preview {
    TodayTvingCollectionView()
}
