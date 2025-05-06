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
    private let baseballVC = BaseballCollectionView()
    private let channelVC = ChannelCollectionView()
    private let gahyunPickVC = GahyunPickCollectionView()
    
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
        contentView.spacing = 28
        
        self.view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addArrangedSubviews(todayTvingVC.view, liveVC.view, movieVC.view, baseballVC.view, channelVC.view, gahyunPickVC.view)
        
        scrollView.snp.makeConstraints{
            $0.edges.equalToSuperview()
        }
        
        contentView.snp.makeConstraints{
            $0.edges.equalToSuperview()
            $0.width.equalToSuperview()
        }
        
        todayTvingVC.view.snp.makeConstraints{
            $0.height.equalTo(240)
            $0.leading.equalToSuperview().inset(12)
        }
        
        liveVC.view.snp.makeConstraints{
            $0.height.equalTo(180)
            $0.leading.equalToSuperview().inset(12)
        }
        
        movieVC.view.snp.makeConstraints{
            $0.height.equalTo(200)
            $0.leading.equalToSuperview().inset(12)
        }
        
        baseballVC.view.snp.makeConstraints{
            $0.height.equalTo(50)
            $0.leading.equalToSuperview()
        }
        
        channelVC.view.snp.makeConstraints {
            $0.height.equalTo(45)
            $0.leading.equalToSuperview().inset(15)
        }
        
        gahyunPickVC.view.snp.makeConstraints {
            $0.height.equalTo(130)
            $0.leading.equalToSuperview().inset(15)
        }
    }
}

#Preview {
    HomeViewController()
}



