//
//  AppCoordinator.swift
//  MVVM_TestProject
//
//  Created by Oksana Poliakova on 29.05.2022.
//

import UIKit

class AppCoordinator: Coordinator {
    var navigationController: UINavigationController
    var isLoggedIn: Bool = false
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        if isLoggedIn {
            showMain(login: User.logins[0].login)
        } else {
            showLogin()
        }
    }
    
    func showLogin() {
        let vc = LoginViewController.createObject()
        vc.coordinator = self
        vc.viewModel = LoginViewModel()
        navigationController.pushViewController(vc, animated: true)
    }
    
    func showMain(login: String?) {
        guard let login = login else {
            return
        }

        let vc = MainViewController.createObject()
        let viewModel = MainViewModel(login: login)
        vc.coordinator = self
        vc.viewModel = viewModel
        navigationController.viewControllers.removeAll()
        navigationController.pushViewController(vc, animated: true)
    }
    
    func showDetail() {
        let vc = DetailViewController.createObject()
        let viewModel = DetailViewModel()
        viewModel.model = UserData.userData
        vc.coordinator = self
        vc.viewModel = viewModel
        navigationController.pushViewController(vc, animated: true)
        
    }
    
    
}
