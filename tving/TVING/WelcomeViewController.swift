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
        setLayout()
        bindEmail()
    }
    
    private func bindEmail() {
        self.welcomeLabel.text = "\(email!)님\n반가워요!"
    }
    
    func setLayout() {
        
        view.addSubviews(welcomeImage, welcomeLabel, mainButton)
        
        view.backgroundColor = .black
        
        welcomeImage.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide).inset(58)
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
    
}

#Preview {
    WelcomeViewController()
}


