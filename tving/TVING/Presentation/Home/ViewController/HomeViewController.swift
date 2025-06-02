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
    
    private let header = HeaderView()
    private let mainPoster = MainPosterViewController()
    private let todayTvingVC = TodayTvingViewController()
    private let movieVC = MovieViewController()
    private let liveVC = LiveViewController()
    private let baseballVC = BaseballViewController()
    private let channelVC = ChannelViewController()
    private let gahyunPickVC = GahyunPickViewController()
    private let footer = FooterView()
    
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
        
        self.view.addSubviews(scrollView, header)
        scrollView.addSubview(contentView)
        contentView.addArrangedSubviews(mainPoster.view, todayTvingVC.view, liveVC.view, movieVC.view, baseballVC.view, channelVC.view, gahyunPickVC.view, footer)
        
        scrollView.snp.makeConstraints{
            $0.top.equalTo(header.snp.bottom).offset(25)
            $0.leading.trailing.bottom.equalToSuperview()
        }
        
        contentView.snp.makeConstraints{
            $0.edges.equalToSuperview()
            $0.width.equalToSuperview()
        }
        
        header.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide)
            $0.leading.equalToSuperview()
            $0.trailing.equalToSuperview().inset(11)
            $0.height.equalTo(100)
        }
        
        mainPoster.view.snp.makeConstraints {
            $0.leading.trailing.equalToSuperview()
            $0.height.equalTo(400)
        }
        
        todayTvingVC.view.snp.makeConstraints{
            $0.height.equalTo(240)
            $0.leading.equalToSuperview().inset(12)
//            $0.top.equalTo(header.snp.bottom).offset(20)
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
        
        footer.snp.makeConstraints {
            $0.leading.trailing.equalToSuperview().inset(14)
            $0.height.equalTo(95)
        }
    }
}

#Preview {
    HomeViewController()
}
