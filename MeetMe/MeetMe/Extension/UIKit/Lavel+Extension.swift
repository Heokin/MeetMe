//
//  Lavel+Extension.swift
//  MeetMe
//
//  Created by Stas Dashkevich on 4.03.22.
//

import Foundation
import UIKit

extension UILabel {
    
    convenience init(text: String, font: UIFont? = .avenir20()){
        self.init()
        
        self.text = text
        self.font = font
    }
}
