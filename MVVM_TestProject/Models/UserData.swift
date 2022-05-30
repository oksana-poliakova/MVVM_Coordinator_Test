//
//  UserData.swift
//  MVVM_TestProject
//
//  Created by Oksana Poliakova on 29.05.2022.
//

import Foundation

struct UserData {
    var name: String?
    var city: String?
    var email: String?
    var phone: String?
}

extension UserData {
    static var userData = UserData(name: "Oksana", city: "Kyiv", email: "test@mvvm.com", phone: "+380671112233")
}
