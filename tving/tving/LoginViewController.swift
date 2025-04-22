//
//  LoginViewController.swift
//  tving
//
//  Created by 쏘 on 4/22/25.
//

import UIKit
import SnapKit

class LoginViewController: UIViewController {
    
    let titleLabel = UILabel()
    let idTextField = UITextField()
    let pwTextField = UITextField()
    let loginButton = UIButton()
    let findIdButton = UIButton()
    let findPwButton = UIButton()
    let divider = UIView()
    let accountLabel = UILabel()
    let setNameButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .black
        
        setLayout()
    }
    
    func setLayout() {
        [titleLabel, idTextField, pwTextField, loginButton, findIdButton, divider, findPwButton, accountLabel, setNameButton].forEach{
            self.view.addSubview($0)
        }
        
        titleLabel.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide).inset(90)
            $0.leading.trailing.equalTo(view.safeAreaLayoutGuide).inset(110)
        }
        
        idTextField.snp.makeConstraints {
            $0.top.equalTo(self.titleLabel.snp.bottom).offset(31)
            $0.leading.trailing.equalTo(view.safeAreaLayoutGuide).inset(20)
            $0.bottom.equalTo(self.titleLabel.snp.bottom).offset(83)
        }
        pwTextField.snp.makeConstraints {
            $0.top.equalTo(self.idTextField.snp.bottom).offset(7)
            $0.leading.trailing.equalTo(view.safeAreaLayoutGuide).inset(20)
            $0.bottom.equalTo(self.idTextField.snp.bottom).offset(59)
            $0.width.equalTo(1)
            $0.height.equalTo(12)
        }
        
        loginButton.snp.makeConstraints {
            $0.top.equalTo(self.pwTextField.snp.bottom).offset(21)
            $0.leading.trailing.equalTo(view.safeAreaLayoutGuide).inset(20)
            $0.bottom.equalTo(self.pwTextField.snp.bottom).offset(73)
        }
        
        findIdButton.snp.makeConstraints{
            $0.top.equalTo(self.loginButton.snp.bottom).offset(31)
            $0.leading.equalTo(view.safeAreaLayoutGuide).inset(85)
        }
        
        divider.snp.makeConstraints{
            $0.top.equalTo(self.loginButton.snp.bottom).offset(36)
            $0.leading.equalTo(self.findIdButton.snp.trailing).offset(35)
            $0.width.equalTo(2)
            $0.height.equalTo(12)
        }
        
        findPwButton.snp.makeConstraints{
            $0.top.equalTo(self.loginButton.snp.bottom).offset(31)
            $0.leading.equalTo(self.divider.snp.trailing).offset(35)
        }
        
        accountLabel.snp.makeConstraints{
            $0.top.equalTo(self.findIdButton.snp.bottom).offset(28)
            $0.leading.equalTo(view.safeAreaLayoutGuide).offset(51)
        }
        
        setNameButton.snp.makeConstraints{
            $0.top.equalTo(self.findPwButton.snp.bottom).offset(23)
            $0.leading.equalTo(self.accountLabel.snp.trailing).offset(33)
        }
        
        
        titleLabel.text = "TVING ID 로그인"
        titleLabel.textAlignment = .center
        titleLabel.textColor = .gray1
        titleLabel.backgroundColor = .black
        titleLabel.font = .systemFont(ofSize: 23)
        
        idTextField.placeholder = "아이디"
        idTextField.font = .systemFont(ofSize: 15)
        idTextField.setPlaceholder(color: .gray2)
        idTextField.textColor = .gray2
        idTextField.backgroundColor = .gray4
        idTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 22, height: 0))
        idTextField.leftViewMode = .always
        idTextField.layer.cornerRadius = 3
        
        pwTextField.placeholder = "비밀번호"
        pwTextField.font = .systemFont(ofSize: 15)
        pwTextField.setPlaceholder(color: .gray2)
        pwTextField.textColor = .gray2
        pwTextField.backgroundColor = .gray4
        pwTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 23, height: 0))
        pwTextField.leftViewMode = .always
        pwTextField.layer.cornerRadius = 3
        
        loginButton.setTitle("로그인하기", for: .normal)
        loginButton.setTitleColor(.gray2, for: .normal)
        loginButton.titleLabel?.font = .systemFont(ofSize: 14)
        loginButton.backgroundColor = .black
        loginButton.layer.borderWidth = 1
        loginButton.layer.borderColor = UIColor.gray4.cgColor
        
        findIdButton.setTitle("아이디 찾기", for: .normal)
        findIdButton.setTitleColor(.gray2, for: .normal)
        findIdButton.titleLabel?.font = .systemFont(ofSize: 14)
        findIdButton.backgroundColor = .black
        
        divider.backgroundColor = .gray4
        
        findPwButton.setTitle("비밀번호 찾기", for: .normal)
        findPwButton.setTitleColor(.gray2, for: .normal)
        findPwButton.titleLabel?.font = .systemFont(ofSize: 14)
        findPwButton.backgroundColor = .black
        
        accountLabel.text = "아직 계정이 없으신가요?"
        accountLabel.textColor = .gray3
        accountLabel.font = .systemFont(ofSize: 14)
        
        setNameButton.setTitle("닉네임 만들러가기", for: .normal)
        setNameButton.setTitleColor(.gray2, for: .normal)
        setNameButton.titleLabel?.font = .systemFont(ofSize: 14)
        setNameButton.setUnderline()
    }
}

#Preview{
    LoginViewController()
}
