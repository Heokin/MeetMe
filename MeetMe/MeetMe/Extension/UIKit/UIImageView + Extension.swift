//
//  UIImageView + Extension.swift
//  MeetMe
//
//  Created by Stas Dashkevich on 4.03.22.
//

import Foundation
import UIKit

extension UIImageView {
    
    convenience init(image: UIImage, contentMode: UIView.ContentMode) {
        self.init()
        
        self.image = image
        self.contentMode = contentMode
    }
}
