//
//  FirestoreService.swift
//  MeetMe
//
//  Created by Stas Dashkevich on 16.03.22.
//

import Foundation
import UIKit
import Firebase
import FirebaseFirestore

class FirestoreService {
    
    static let shared = FirestoreService()
    
    let db = Firestore.firestore()
    
    private var userRef: CollectionReference {
        return db.collection("users")
    }
    
    func getUserdata(user: User,completion: @escaping (Result<MUser, Error>) -> Void){
        let docRef = userRef.document(user.uid)
        docRef.getDocument { (document, error) in
            if let document = document, document.exists {
                guard let muser = MUser(document: document) else {
                    completion(.failure(UserError.documentError))
                    return
                }
                completion(.success(muser))
            } else {
                completion(.failure(UserError.notFilled))
            }
        }
    }
    
    func saveprofileWith(id: String, email: String, userName: String?, avatarImageString: String?, description: String?, sex: String?, completion: @escaping (Result<MUser, Error>) -> Void) {
      
        guard Validators.isField(userName: userName, description: description, sex: sex) else {
            completion(.failure(UserError.notFilled))
            return
        }
    
        let muser = MUser(username: userName!, email: email, avatarStringURL: "notNow", description: description!, sex: sex!, id: id)
        
        self.userRef.document(muser.id).setData(muser.representation) { (error) in
            if let error = error {
                completion(.failure(error))
            } else {
                completion(.success(muser))
            }
        }

    }
}
