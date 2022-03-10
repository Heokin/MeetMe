//
//  SegmentedControl+Extension.swift
//  MeetMe
//
//  Created by Stas Dashkevich on 8.03.22.
//

import Foundation
import UIKit

extension UISegmentedControl {
    
    convenience init(first: String, second: String) {
        self.init()
        self.insertSegment(withTitle: first, at: 0, animated: true)
        self.insertSegment(withTitle: second, at: 1, animated: true)
        self.selectedSegmentIndex = 0
    }
}
