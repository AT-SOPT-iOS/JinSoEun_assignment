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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLayout()
        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationItem.hidesBackButton = true
    }
    
    private func setLayout() {
        addChild(todayTvingVC)
        view.addSubview(todayTvingVC.view)
        
        todayTvingVC.view.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            $0.leading.trailing.equalToSuperview()
            $0.height.equalTo(240) // 필요에 따라 조절
        }
        
        todayTvingVC.didMove(toParent: self)
    }
}

#Preview {
    HomeViewController()
}
