//
//  ViewModel.swift
//  MVVM_TestProject
//
//  Created by Oksana Poliakova on 27.05.2022.
//

import Foundation
import UIKit.UIColor

final class LoginScreenViewModel {
    
    // MARK: - Properties
    
    typealias AuthorizationType = (text: String, color: UIColor)
    
    // MARK: - Authorization logic
    
    func userButtonPressed(login: String, password: String, completion: @escaping(AuthorizationType) -> ()) {
        if login != User.logins[0].login || password != User.logins[0].password {
            UserDefaultsManager.shared.setAuthorization(bool: false)
            completion((text: "Authorisation Error",
                        color: #colorLiteral(red: 0.3098039329, green: 0.01568627544, blue: 0.1294117719, alpha: 1)))
        } else {
            UserDefaultsManager.shared.setAuthorization(bool: true)
            completion((text: "You successfully logged in",
                        color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)))
        }
    }
}
