//
//  ViewController.swift
//  MeetMe
//
//  Created by Stas Dashkevich on 4.03.22.
//

import UIKit

class AuthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setUpConstrains()
    }
    
    let meetMeLogo = UILabel(text: "MeetMe")
    let googleLabel = UILabel(text: "Get started with")
    let emailLabel = UILabel(text: "Get started with")
    let alreadyOnBoardLabel = UILabel(text: "already onboard")
    
    let emailButton = UIButton(backGroundColor: .buttonDark(), titleColor: .white, title: "Email", cornerRadius: 4)
    let loginButton = UIButton(backGroundColor: .white, titleColor: .buttonRed(), isShadow: true,  title: "Email", cornerRadius: 4)
    let googleButton = UIButton(backGroundColor: .white, titleColor: .black, isShadow: true,  title: "Google", cornerRadius: 4)
    
    // MARK: - Setup constraints
    private func setUpConstrains() {
        let googleView = ButtonFormView(label: googleLabel, button: googleButton)
        let emailView = ButtonFormView(label: emailLabel, button: emailButton)
        let loginView = ButtonFormView(label: alreadyOnBoardLabel, button: loginButton)
    
        let stackView = UIStackView(arrangedSubviews: [googleView, emailView, loginView], axis: .vertical, spacing: 40)
        meetMeLogo.translatesAutoresizingMaskIntoConstraints = false
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(meetMeLogo)
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            meetMeLogo.topAnchor.constraint(equalTo: view.topAnchor, constant: 160),
            meetMeLogo.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            ])
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: meetMeLogo.bottomAnchor, constant: 160),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
        ])
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
