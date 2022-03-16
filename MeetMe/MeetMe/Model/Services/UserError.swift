//
//  UserError.swift
//  MeetMe
//
//  Created by Stas Dashkevich on 16.03.22.
//

import Foundation

enum UserError {
    case notFilled
    case photonotExist
    case documentError
}

extension UserError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .notFilled:
            return NSLocalizedString("Заполните все поля", comment: "")
        case .photonotExist:
            return NSLocalizedString("Фото где?)", comment: "")
        case .documentError:
            return NSLocalizedString("Дата плохая?)", comment: "")
        }
    }
}
