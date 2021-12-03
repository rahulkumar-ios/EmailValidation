//
//  EmailValidation.swift
//  EmailValidation
//
//  Created by Rahul Kumar KALYAMPUDI on 03/12/21.
//

import Foundation

open class Validation {
    public  static  func isValidEmail(_ email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
}
