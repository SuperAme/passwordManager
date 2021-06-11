//
//  ViewController.swift
//  passwordManager
//
//  Created by IDS Comercial on 09/06/21.
//

import UIKit
import MaterialComponents

class ViewController: UIViewController {
    
    let scrollView = UIScrollView()
    let contentView = UIView()
    
    let usernameTextField: MDCOutlinedTextField = {
        let usernameTextField = MDCOutlinedTextField()
        usernameTextField.label.text = "Username"
        usernameTextField.placeholder = "Username"
        usernameTextField.translatesAutoresizingMaskIntoConstraints = false
        usernameTextField.clearButtonMode = .unlessEditing
        usernameTextField.sizeToFit()
        return usernameTextField
    }()
    
    let passwordTextField: MDCOutlinedTextField = {
        let passwordTextField = MDCOutlinedTextField()
        passwordTextField.label.text = "Password"
        passwordTextField.placeholder = "Password"
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.isSecureTextEntry = true
        return passwordTextField
    }()
    
    let loginButton: MDCButton = {
        let button = MDCButton()
        button.setTitle("Login", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(loginPressed(sender:)), for: .touchUpInside)
        return button
    }()
    
    let signUpButton: MDCButton = {
        let button = MDCButton()
        let underlinedTitle = NSAttributedString(string: "Sign Up", attributes: [NSAttributedString.Key.underlineStyle: NSUnderlineStyle.thick.rawValue])
        button.setAttributedTitle(underlinedTitle, for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(signUpPressed(sender:)), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupScrollView()
        setupViews()
    }
    
    func setupScrollView() {
        
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        
        scrollView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        scrollView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        contentView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
        contentView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
    }
    
    func setupViews() {
        
        contentView.addSubview(usernameTextField)
        contentView.addSubview(passwordTextField)
        contentView.addSubview(loginButton)
        contentView.addSubview(signUpButton)
        
        usernameTextField.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        usernameTextField.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 50).isActive = true
        usernameTextField.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 3/4).isActive = true
        
        passwordTextField.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        passwordTextField.topAnchor.constraint(equalTo: usernameTextField.bottomAnchor, constant: 25).isActive = true
        passwordTextField.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 3/4).isActive = true
        
        loginButton.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 25).isActive = true
        loginButton.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 3/4).isActive = true
        
        signUpButton.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        signUpButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 35).isActive = true
        signUpButton.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 3/4).isActive = true
        signUpButton.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
    }
    
    @objc private func loginPressed(sender: Any) {
        let homeVC = HomeViewController()
        self.navigationController?.pushViewController(homeVC, animated: true)
    }
    
    @objc func signUpPressed(sender: Any) {
        print("Sign in pressed")
    }
}

