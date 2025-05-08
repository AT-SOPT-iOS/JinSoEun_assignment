//
//  WelcomeViewController.swift
//  TVING
//
//  Created by 쏘 on 4/25/25.
//

import UIKit
import SnapKit


class WelcomeViewController: UIViewController {
    
    var email: String?
    
    let welcomeImage = UIImageView()
    let welcomeLabel = UILabel()
    let homeButton = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUI()
        setHierarchy()
        setConstraints()
        setActions()
        bindEmail()
    }
    
    func bindEmail() {
        self.welcomeLabel.text = "\(email!)님\n반가워요!"
    }
    
    func setUI() {
        view.backgroundColor = .black
        
        welcomeImage.image = .welcomeLogo
        
        welcomeLabel.textColor = .white
        welcomeLabel.textAlignment = .center
        welcomeLabel.font = .pretendardBold(size: 23)
        welcomeLabel.numberOfLines = 2
        
        homeButton.setTitle("메인으로", for: .normal)
        homeButton.setTitleColor(.white, for: .normal)
        homeButton.titleLabel?.font = .pretendardRegular(size: 14)
        homeButton.backgroundColor = .tvingRed
        homeButton.layer.cornerRadius = 3
    }
    
    
    func setHierarchy() {
        view.addSubviews(welcomeImage, welcomeLabel, homeButton)
    }
    
    func setConstraints() {
        welcomeImage.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide)
            $0.leading.trailing.equalTo(view.safeAreaLayoutGuide)
        }
        
        welcomeLabel.snp.makeConstraints{
            $0.top.equalTo(welcomeImage.snp.bottom).offset(67)
            $0.leading.trailing.equalTo(view.safeAreaLayoutGuide)
        }
        
        homeButton.snp.makeConstraints {
            $0.leading.trailing.equalTo(view.safeAreaLayoutGuide).inset(20)
            $0.bottom.equalTo(view.safeAreaLayoutGuide).inset(66)
            $0.height.equalTo(66)
        }
    }
    
    private func setActions() {
        homeButton.addTarget(self, action: #selector(homeButtonDidTapped), for: .touchUpInside)
    }
    private func pushToHomeVC() {
        let homeViewController = HomeViewController()
        
        self.navigationController?.pushViewController(homeViewController, animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationItem.hidesBackButton = true
    }
    
    @objc private func homeButtonDidTapped() {
        pushToHomeVC()
    }
    
}

#Preview {
    WelcomeViewController()
}
