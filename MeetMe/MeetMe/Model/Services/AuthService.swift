//
//  AuthService.swift
//  MeetMe
//
//  Created by Stas Dashkevich on 14.03.22.
//

import Foundation
import UIKit
import Firebase
import FirebaseAuth

class AuthService {
    
    static let shared = AuthService()
    private let auth = Auth.auth()
    
    func login(email: String?, password: String?, completion: @escaping (Result<User, Error>) -> Void) {
        auth.signIn(withEmail: email!, password: password!) { (result, error) in
            
            guard email == email, password == password else {
                completion(.failure(AuthError.notFilled))
                return
            }
            
            guard let result = result else {
                completion(.failure(error!))
                return
            }
            completion(.success(result.user))
        }
    }
    
    func register(email: String?, password: String?, confirmPassword: String?, completion: @escaping (Result<User, Error>) -> Void) {
        auth.createUser(withEmail: email!, password: password!) {(result, error) in
            
            guard Validators.isField(email: email, password: password, confirmPassword: confirmPassword) else {
                completion(.failure(AuthError.notFilled))
                return
            }
            
            guard  password!.lowercased() == confirmPassword?.lowercased() else {
                completion(.failure(AuthError.passwordsNotMatched))
                return
            }
            
            guard Validators.isSimpleEmail(email!) else {
                completion(.failure(AuthError.invalidEmail))
                return
            }
            
            guard let result = result else {
                completion(.failure(error!))
                return
            }
            completion(.success(result.user))
        }
    }
}
