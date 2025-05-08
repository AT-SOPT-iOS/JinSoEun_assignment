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
    let mainButton = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUI()
        setHierarchy()
        setConstraints()
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
        
        mainButton.setTitle("메인으로", for: .normal)
        mainButton.setTitleColor(.white, for: .normal)
        mainButton.titleLabel?.font = .pretendardRegular(size: 14)
        mainButton.backgroundColor = .tvingRed
        mainButton.layer.cornerRadius = 3
    }
    
    
    func setHierarchy() {
        view.addSubviews(welcomeImage, welcomeLabel, mainButton)
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
        
        mainButton.snp.makeConstraints {
            $0.leading.trailing.equalTo(view.safeAreaLayoutGuide).inset(20)
            $0.bottom.equalTo(view.safeAreaLayoutGuide).inset(66)
            $0.height.equalTo(66)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationItem.hidesBackButton = true
    }
}

#Preview {
    WelcomeViewController()
}
