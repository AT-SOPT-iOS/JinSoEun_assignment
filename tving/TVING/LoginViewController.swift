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
    
    let idFieldStackView = UIStackView()
    let idTextField = UITextField()
    let idClearButton = UIButton()
    
    let passwordFieldStackView = UIStackView()
    let passwordTextField = UITextField()
    let passwordClearButton = UIButton()
    let passwordHideToggle = UIButton()
    
    let loginButton = UIButton()
    
    let findIdButton = UIButton()
    let findPwButton = UIButton()
    let divider = UIView()
    let findInfoStackView = UIStackView()
    
    let accountLabel = UILabel()
    let setNameButton = UIButton()
    let makeNicknameStackView = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUI()
        setHierarchy()
        setConstraints()
        setActions()
    }
    
    func setUI() {
        self.view.backgroundColor = .black
        
        titleLabel.text = "TVING ID 로그인"
        titleLabel.textColor = .gray1
        titleLabel.backgroundColor = .black
        titleLabel.font = .pretendardRegular(size: 23)
        
        
        idTextField.placeholder = "아이디"
        idTextField.font = .pretendardRegular(size: 15)
        idTextField.setPlaceholder(color: .gray2)
        idTextField.textColor = .gray2
        idTextField.autocapitalizationType = .none
        
        idClearButton.setImage(.clearButton, for: .normal)
        idClearButton.isHidden = true
        idFieldStackView.isLayoutMarginsRelativeArrangement = true
        
        idClearButton.setImage(.clearButton, for: .normal)
        idClearButton.isHidden = true
        
        idFieldStackView.alignment = .center
        idFieldStackView.axis = .horizontal
        idFieldStackView.distribution = .fill
        idFieldStackView.backgroundColor = .gray4
        idFieldStackView.layer.cornerRadius = 3
        
        
        passwordTextField.placeholder = "비밀번호"
        passwordTextField.font = .pretendardRegular(size: 15)
        passwordTextField.setPlaceholder(color: .gray2)
        passwordTextField.textColor = .gray2
        passwordTextField.backgroundColor = .gray4
        passwordTextField.isSecureTextEntry = true
        
        passwordClearButton.setImage(.clearButton, for: .normal)
        passwordClearButton.isHidden = true
        
        passwordHideToggle.setImage(.hideButton, for: .normal)
        passwordHideToggle.isHidden = true
        
        passwordFieldStackView.alignment = .center
        passwordFieldStackView.axis = .horizontal
        passwordFieldStackView.distribution = .fill
        passwordFieldStackView.backgroundColor = .gray4
        passwordFieldStackView.isLayoutMarginsRelativeArrangement = true
        passwordFieldStackView.layer.cornerRadius = 3
        
        
        loginButton.setTitle("로그인하기", for: .normal)
        loginButton.setTitleColor(.gray2, for: .normal)
        loginButton.backgroundColor = .black
        loginButton.layer.borderColor = UIColor.gray4.cgColor
        loginButton.layer.borderWidth = 1
        loginButton.titleLabel?.font = .pretendardRegular(size: 14)
        loginButton.layer.cornerRadius = 3
        
        
        findIdButton.setTitle("아이디 찾기", for: .normal)
        findIdButton.setTitleColor(.gray2, for: .normal)
        findIdButton.titleLabel?.font = .pretendardRegular(size: 14)
        
        divider.backgroundColor = .gray4
        
        findPwButton.setTitle("비밀번호 찾기", for: .normal)
        findPwButton.setTitleColor(.gray2, for: .normal)
        findPwButton.titleLabel?.font = .pretendardRegular(size: 14)
        
        findInfoStackView.alignment = .center
        findInfoStackView.axis = .horizontal
        findInfoStackView.distribution = .equalSpacing
        
        
        accountLabel.text = "아직 계정이 없으신가요?"
        accountLabel.textColor = .gray3
        accountLabel.font = .pretendardLight(size: 14)
        
        setNameButton.setTitle("닉네임 만들러가기", for: .normal)
        setNameButton.setTitleColor(.gray2, for: .normal)
        setNameButton.titleLabel?.font = .pretendardLight(size: 14)
        setNameButton.setUnderline()
        
        makeNicknameStackView.alignment = .center
        makeNicknameStackView.axis = .horizontal
        makeNicknameStackView.distribution = .equalSpacing
    }
    
    func setHierarchy() {
        view
            .addSubviews(
                titleLabel,
                idFieldStackView,
                passwordFieldStackView,
                loginButton,
                findInfoStackView,
                makeNicknameStackView
            )
        
        idFieldStackView
            .addArrangedSubviews(
                idTextField,
                idClearButton,
            )
        
        passwordFieldStackView
            .addArrangedSubviews(
                passwordTextField,
                passwordClearButton,
                passwordHideToggle
            )
        
        findInfoStackView
            .addArrangedSubviews(
                findIdButton,
                divider,
                findPwButton
            )
        
        makeNicknameStackView
            .addArrangedSubviews(
                accountLabel,
                setNameButton
            )
    }
    
    func setConstraints() {

        titleLabel.snp.makeConstraints{
            $0.top.equalTo(view.safeAreaLayoutGuide).inset(90)
            $0.leading.trailing.equalTo(view.safeAreaLayoutGuide).inset(110)
        }
        
        idFieldStackView.snp.makeConstraints{
            $0.top.equalTo(titleLabel.snp.bottom).offset(31)
            $0.leading.trailing.equalTo(view.safeAreaLayoutGuide).inset(20)
            $0.height.equalTo(52)
        }
        
        idTextField.snp.makeConstraints{
            $0.top.bottom.equalToSuperview()
            $0.leading.equalToSuperview().inset(20)
        }
        
        idClearButton.snp.makeConstraints{
            $0.trailing.equalToSuperview().inset(20)
        }
        
        passwordFieldStackView.snp.makeConstraints {
            $0.top.equalTo(idFieldStackView.snp.bottom).offset(7)
            $0.leading.trailing.equalTo(view.safeAreaLayoutGuide).inset(20)
            $0.height.equalTo(52)
        }
        
        passwordTextField.snp.makeConstraints{
            $0.leading.equalToSuperview().inset(20)
        }
        
        passwordClearButton.snp.makeConstraints{
            $0.height.width.equalTo(20)
            $0.trailing.equalTo(passwordHideToggle.snp.leading).offset(-14)
        }
        
        passwordHideToggle.snp.makeConstraints{
            $0.trailing.equalToSuperview().inset(20)
            $0.height.width.equalTo(20)
        }
        
        loginButton.snp.makeConstraints {
            $0.top.equalTo(passwordFieldStackView.snp.bottom).offset(21)
            $0.leading.trailing.equalTo(view.safeAreaLayoutGuide).inset(20)
            $0.height.equalTo(52)
        }
        
        findInfoStackView.snp.makeConstraints{
            $0.top.equalTo(loginButton.snp.bottom).offset(31)
            $0.leading.trailing.equalTo(view.safeAreaLayoutGuide).inset(85)
            $0.height.equalTo(22)
        }
        
        divider.snp.makeConstraints{
            $0.width.equalTo(2)
            $0.height.equalTo(12)
        }
        
        makeNicknameStackView.snp.makeConstraints {
            $0.top.equalTo(findInfoStackView.snp.bottom).offset(28)
            $0.leading.trailing.equalTo(view.safeAreaLayoutGuide).inset(58)
            $0.height.equalTo(22)
        }
    }
    
    
    func setActions() {
        idTextField.addTarget(self, action: #selector(textFieldDidBeginEditing), for: .editingDidBegin)
        idTextField.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
        idTextField.addTarget(self, action: #selector(textFieldDidEndEditing), for: .editingDidEnd)
        
        idClearButton.addTarget(self, action: #selector(clearTextField), for: .touchUpInside)
  
        
        passwordTextField.addTarget(self, action: #selector(textFieldDidBeginEditing), for: .editingDidBegin)
        passwordTextField.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
        passwordTextField.addTarget(self, action: #selector(textFieldDidEndEditing), for: .editingDidEnd)

        passwordClearButton.addTarget(self, action: #selector(clearTextField), for: .touchUpInside)
        
        passwordHideToggle.addTarget(self, action: #selector(passwordHideButtonDidTapped), for: .touchUpInside)
        
        
        loginButton.addTarget(self, action: #selector(loginButtonDidTapped), for: .touchUpInside)
    }
    
    
    @objc private func clearTextField(_ sender: UIButton) {
        
        if sender == idClearButton {
            idTextField.text = ""
            idClearButton.isHidden = true
            activeLoginButton()
        } else if sender == passwordClearButton {
            passwordTextField.text = ""
            passwordClearButton.isHidden = true
            passwordHideToggle.isHidden = true
            activeLoginButton()
        }
    }
    
    @objc private func textFieldDidBeginEditing(_ sender: UITextField) {
        if sender == idTextField {
            idClearButton.isHidden = sender.text?.isEmpty ?? true
            idFieldStackView.layer.borderColor = UIColor.gray2.cgColor
            idFieldStackView.layer.borderWidth = 1
            
        } else if sender == passwordTextField {
            passwordClearButton.isHidden = sender.text?.isEmpty ?? true
            passwordFieldStackView.layer.borderColor = UIColor.gray2.cgColor
            passwordFieldStackView.layer.borderWidth = 1
            passwordHideToggle.isHidden = sender.text?.isEmpty ?? true
        }
    }
    
    @objc private func textFieldDidChange(_ sender:UITextField) {
        if sender == idTextField {
            idClearButton.isHidden = sender.text?.isEmpty ?? true
            
        } else if sender == passwordTextField {
            passwordClearButton.isHidden = sender.text?.isEmpty ?? true
            passwordHideToggle.isHidden = sender.text?.isEmpty ?? true
        }
        activeLoginButton()
    }
    
    @objc private func textFieldDidEndEditing(_ sender: UITextField) {
        if sender == idTextField {
            idFieldStackView.layer.borderWidth = 0
            idClearButton.isHidden = true
        } else if sender == passwordTextField {
            passwordFieldStackView.layer.borderWidth = 0
            passwordClearButton.isHidden = true
            passwordHideToggle.isHidden = sender.text?.isEmpty ?? true
        }
    }
    
    @objc private func passwordHideButtonDidTapped() {
        if passwordTextField.isSecureTextEntry {
            passwordTextField.isSecureTextEntry = false
        } else {
            passwordTextField.isSecureTextEntry = true
        }
        
    }
    
    private func activeLoginButton(){
        if idTextField.text?.isEmpty ?? true  || passwordTextField.text?.isEmpty ?? true {
            loginButton.setTitleColor(.gray2, for: .normal)
            loginButton.backgroundColor = .black
            loginButton.layer.borderWidth = 1
            loginButton.isEnabled = false
        } else {
            loginButton.setTitleColor(.white, for: .normal)
            loginButton.backgroundColor = .tvingRed
            loginButton.layer.borderWidth = 0
            loginButton.isEnabled = true
        }
    }
    private func pushToWelcomeVC() {
        let welcomeViewController = WelcomeViewController()
        
        welcomeViewController.email = idTextField.text
        self.navigationController?.pushViewController(welcomeViewController, animated: true)
    }
    
    @objc private func loginButtonDidTapped() {
        pushToWelcomeVC()
    }
}

#Preview{
    LoginViewController()
}
