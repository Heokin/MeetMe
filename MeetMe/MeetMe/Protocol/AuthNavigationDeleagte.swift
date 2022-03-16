//
//  AuthNavigationDeleagte.swift
//  MeetMe
//
//  Created by Stas Dashkevich on 16.03.22.
//

import Foundation
import UIKit

protocol AuthNavigationDelegate: AnyObject {
    func toLoginVc()
    func toSignUpVc()
}
