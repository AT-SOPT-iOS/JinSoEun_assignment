//
//  MovieCollectionView.swift
//  TVING
//
//  Created by 쏘 on 5/2/25.
//



import UIKit
import SnapKit

final class MovieViewController : UIViewController {
    
    final let interItemSpacing: CGFloat = 8
    final let cellWidth: CGFloat = 98
    final let cellHeight: CGFloat = 146
    
    private var itemData = MovieModel.dummy()
    
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
        label.text = "실시간 인기 영화"
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
            $0.leading.trailing.equalTo(self.view.safeAreaLayoutGuide)
            $0.top.equalTo(self.view.safeAreaLayoutGuide)
        }
        collectionView.snp.makeConstraints{
            $0.top.equalTo(titleLabel.snp.bottom).offset(9)
            $0.leading.trailing.equalTo(self.view.safeAreaLayoutGuide)
            $0.height.equalTo(146)
        }
        expandLabel.snp.makeConstraints{
            $0.top.trailing.equalTo(self.view.safeAreaLayoutGuide)
            $0.width.equalTo(44)
            $0.height.equalTo(20)
        }
    }
    
    private func register() {
        collectionView.register(MovieCollectionViewCell.self, forCellWithReuseIdentifier: MovieCollectionViewCell.identifier)
    }
    
    private func setDelegate() {
        collectionView.delegate = self
        collectionView.dataSource = self
    }
}

extension MovieViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: cellWidth, height: cellHeight)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return interItemSpacing
    }
}

extension MovieViewController : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MovieCollectionViewCell.identifier, for: indexPath) as? MovieCollectionViewCell else { return MovieCollectionViewCell() }
        cell.dataBind(itemData[indexPath.item])
        return cell
    }
}




#Preview {
    MovieViewController()
}
