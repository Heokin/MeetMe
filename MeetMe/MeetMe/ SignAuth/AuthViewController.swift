//
//  ViewController.swift
//  MeetMe
//
//  Created by Stas Dashkevich on 4.03.22.
//

import UIKit

    class AuthViewController: UIViewController {
        
        let logoImageView = UILabel(text: "Meetme")
        
        let googleLabel = UILabel(text: "Get started with")
        let emailLabel = UILabel(text: "Or sign up with")
        let alreadyOnboardLabel = UILabel(text: "Alerady onboard?")
        
        let googleButton = UIButton(title: "Google", titleColor: .black, backgroundColor: .white, isShadow: true)
        let emailButton = UIButton(title: "Email", titleColor: .white, backgroundColor: .buttonDark())
        let loginButton = UIButton(title: "Login", titleColor: .buttonRed(), backgroundColor: .white, isShadow: true)

        let loginVC = LoginViewController()
        let signUpVc = SignUpViewController()
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            googleButton.customizeGoogleButton()
            view.backgroundColor = .white
            setupConstraints()
            
            loginVC.delegate = self
            signUpVc.delegate = self
            
            //MARK: - AddTarget
            
            emailButton.addTarget(self, action: #selector(emailButtonTaped), for: .touchUpInside)
            loginButton.addTarget(self, action: #selector(loginButtonTaped), for: .touchUpInside)
        }
        @objc func emailButtonTaped() {
            let vc = SignUpViewController()
            present(vc, animated: true, completion: nil)
        }
        @objc func loginButtonTaped() {
            let vc = LoginViewController()
            present(vc, animated: true, completion: nil)
        }
    }



    // MARK: - Setup constraints
    extension AuthViewController {
        private func setupConstraints() {
            let googleView = ButtonFormView(label: googleLabel, button: googleButton)
            let emailView = ButtonFormView(label: emailLabel, button: emailButton)
            let loginView = ButtonFormView(label: alreadyOnboardLabel, button: loginButton)
        
            let stackView = UIStackView(arrangedSubviews: [googleView, emailView, loginView], axis: .vertical, spacing: 40)
            logoImageView.translatesAutoresizingMaskIntoConstraints = false
            stackView.translatesAutoresizingMaskIntoConstraints = false
            
            view.addSubview(logoImageView)
            view.addSubview(stackView)
            
            NSLayoutConstraint.activate([
                logoImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 160),
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
                ])
            
            NSLayoutConstraint.activate([
                stackView.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 160),
                stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
                stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
            ])
        }
    }

extension AuthViewController: AuthNavigationDelegate {
    func toLoginVc() {
        present(loginVC, animated: true, completion: nil)
    }
    
    func toSignUpVc() {
        present(signUpVc, animated: true, completion: nil)
    }
    
    
}

// MARK: - SwiftUI
import SwiftUI

struct AuthVcProvider: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
  
    
    struct ContainerView: UIViewControllerRepresentable {
        
        let viewController = AuthViewController()
        
        func makeUIViewController(context: Context) ->  AuthViewController {
            return viewController
        }
        
        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
            
        }
    }
}
