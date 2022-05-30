//
//  MainViewModel.swift
//  MVVM_TestProject
//
//  Created by Oksana Poliakova on 29.05.2022.
//

import Foundation

final class MainScreenViewModel {
    
    // MARK: - Properties
    
    public var login = ""
    
    // MARK: - Init
    
    init(login: String) {
        self.login = login
    }
}
