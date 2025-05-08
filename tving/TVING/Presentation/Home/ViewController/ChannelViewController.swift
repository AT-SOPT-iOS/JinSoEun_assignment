//
//  ChannelCollectionView.swift
//  TVING
//
//  Created by 쏘 on 5/7/25.
//

import UIKit
import SnapKit

final class ChannelViewController: UIViewController {
    
    final let interItemSpacing: CGFloat = 7
    final let cellWidth: CGFloat = 90
    final let cellHeight: CGFloat = 45
    
    private var itemData = ChannelModel.dummy()
    
    private let collectionView : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        return collectionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setLayout()
        setDelegate()
        setRegister()
    }
    
    private func setLayout(){
        self.view.addSubview(collectionView)
        self.view.backgroundColor = .black
        collectionView.backgroundColor = .black
        
        collectionView.snp.makeConstraints{
            $0.top.leading.trailing.equalTo(view.safeAreaLayoutGuide)
            $0.height.equalTo(50)
        }
    }
    
    private func setDelegate(){
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    private func setRegister(){
        collectionView.register(ChannelCollectionViewCell.self, forCellWithReuseIdentifier: ChannelCollectionViewCell.identifier)
    }
    
}


extension ChannelViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: cellWidth, height: cellHeight)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return interItemSpacing
    }
}

extension ChannelViewController : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ChannelCollectionViewCell.identifier, for: indexPath) as? ChannelCollectionViewCell else { return ChannelCollectionViewCell() }
        cell.dataBind(itemData[indexPath.item])
        
        return cell
    }
}


#Preview {
    ChannelViewController()
}
