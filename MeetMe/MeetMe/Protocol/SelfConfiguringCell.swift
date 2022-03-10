//
//  SelfConfiguringCell.swift
//  MeetMe
//
//  Created by Stas Dashkevich on 10.03.22.
//

import Foundation

protocol SelfConfiguringCell {
    static var reuseId: String { get }
    func configure<U: Hashable>(with value: U)
}
