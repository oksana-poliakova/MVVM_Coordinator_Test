//
//  User.swift
//  MVVM_TestProject
//
//  Created by Oksana Poliakova on 27.05.2022.
//

import Foundation

struct User {
    let login: String?
    let password: String?
}

extension User {
    static var logins = [
        User(login: "oksana", password: "123456")
    ]
}
