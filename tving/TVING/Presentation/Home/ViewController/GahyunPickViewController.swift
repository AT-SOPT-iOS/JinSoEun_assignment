//
//  GahyunPickCollectionView.swift
//  TVING
//
//  Created by 쏘 on 5/7/25.
//

import UIKit
import SnapKit

final class GahyunPickViewController : UIViewController {
    
    final let interItemSpacing: CGFloat = 8
    final let cellWidth: CGFloat = 160
    final let cellHeight: CGFloat = 90
    
    private var itemData = GahyunPickModel.dummy()
    
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
        label.text = "김가현PD의 인생작 TOP 5"
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
            $0.top.equalTo(titleLabel.snp.bottom).offset(12)
            $0.leading.trailing.equalTo(self.view.safeAreaLayoutGuide)
            $0.height.equalTo(90)
        }
    }
    
    private func register() {
        collectionView.register(GahyunPickCollectionViewCell.self, forCellWithReuseIdentifier: GahyunPickCollectionViewCell.identifier)
    }
    
    private func setDelegate() {
        collectionView.delegate = self
        collectionView.dataSource = self
    }
}

extension GahyunPickViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: cellWidth, height: cellHeight)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return interItemSpacing
    }
}

extension GahyunPickViewController : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: GahyunPickCollectionViewCell.identifier, for: indexPath) as? GahyunPickCollectionViewCell else { return GahyunPickCollectionViewCell() }
        cell.dataBind(itemData[indexPath.item])
        return cell
    }
}




#Preview {
    GahyunPickViewController()
}
