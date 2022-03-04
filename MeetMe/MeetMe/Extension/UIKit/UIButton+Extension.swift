//
//  UIButton+Extension.swift
//  MeetMe
//
//  Created by Stas Dashkevich on 4.03.22.
//

import Foundation
import UIKit

extension UIButton {
    convenience init(backGroundColor: UIColor,
                     titleColor: UIColor,
                     isShadow: Bool = false,
                     font: UIFont? = .avenir20(),
                     title: String,
                     cornerRadius:CGFloat = 4 ){
        self.init(type: .system)
        
        self.setTitle(title, for: .normal)
        self.setTitleColor(titleColor, for: .normal)
        self.backgroundColor = backGroundColor
        self.titleLabel?.font = font
        self.layer.cornerRadius = cornerRadius
        
        if isShadow {
            self.layer.shadowColor = UIColor.black.cgColor
            self.layer.shadowRadius = 4
            self.layer.shadowOpacity = 0.2
            self.layer.shadowOffset = CGSize(width: 0, height: 4)
        }
    }
}
