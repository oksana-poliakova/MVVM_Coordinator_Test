//
//  UserDefaultManager.swift
//  MVVM_TestProject
//
//  Created by Oksana Poliakova on 30.05.2022.
//

import Foundation

final class UserDefaultsManager {
    static let shared = UserDefaultsManager()
    
    private init() { }
    
    func setAuthorization(bool: Bool) {
        UserDefaults().set(bool, forKey: "authorization")
    }
    
    var isAuthorized: Bool {
        return UserDefaults.standard.bool(forKey: "authorization")
    }
}
