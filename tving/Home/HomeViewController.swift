//
//  HomeViewController.swift
//  TVING
//
//  Created by 쏘 on 5/2/25.
//

import UIKit
import SnapKit

final class HomeViewController : UIViewController {
    
    private let todayTvingVC = TodayTvingCollectionView()
    private let movieVC = MovieCollectionView()
    private let liveVC = LiveCollectionView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLayout()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationItem.hidesBackButton = true
    }
    
    private func setLayout() {
        self.view.backgroundColor = .black
        
        addChild(todayTvingVC)
        addChild(movieVC)
        addChild(liveVC)
        view.addSubviews(todayTvingVC.view, movieVC.view, liveVC.view)
        
        todayTvingVC.view.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            $0.leading.equalToSuperview().inset(12)
            $0.trailing.equalToSuperview()
            $0.height.equalTo(240)
        }
        
        movieVC.view.snp.makeConstraints {
            $0.top.equalTo(liveVC.view.snp.bottom).offset(28)
            $0.leading.equalToSuperview().inset(12)
            $0.trailing.equalToSuperview()
            $0.height.equalTo(240)
        }
        
        liveVC.view.snp.makeConstraints{
            $0.top.equalTo(todayTvingVC.view.snp.bottom).offset(28)
            $0.leading.equalToSuperview().inset(12)
            $0.trailing.equalToSuperview()
            $0.height.equalTo(200)
        }
        
        
    }
}

#Preview {
    HomeViewController()
}
