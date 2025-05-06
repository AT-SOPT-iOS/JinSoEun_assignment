//
//  HomeViewController.swift
//  TVING
//
//  Created by 쏘 on 5/2/25.
//

import UIKit
import SnapKit

final class HomeViewController : UIViewController {
    private let scrollView = UIScrollView()
    private let contentView = UIStackView()
    
    private let todayTvingVC = TodayTvingCollectionView()
    private let movieVC = MovieCollectionView()
    private let liveVC = LiveCollectionView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLayout()
        setUI()
    }
    
    private func setUI() {
        self.view.backgroundColor = .black
    }

    
    private func setLayout() {

        contentView.axis = .vertical
        contentView.spacing = 60
        
        self.view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addArrangedSubviews(todayTvingVC.view, liveVC.view, movieVC.view)
        
        scrollView.snp.makeConstraints{
            $0.edges.equalToSuperview()
        }
        
        contentView.snp.makeConstraints{
            $0.edges.equalToSuperview()
            $0.width.equalToSuperview()
        }
        
        todayTvingVC.view.snp.makeConstraints{
            $0.height.equalTo(270)
        }
        
        movieVC.view.snp.makeConstraints{
            $0.height.equalTo(200)
        }
        
        liveVC.view.snp.makeConstraints{
            $0.height.equalTo(160)
        }
//        [todayTvingVC.view, movieVC.view, liveVC.view].forEach {
//            $0.snp.makeConstraints {
//                $0.height.equalTo(250)
//            }
//        }
        
        
    }
}

#Preview {
    HomeViewController()
}
