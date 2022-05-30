//
//  AppCoordinator.swift
//  MVVM_TestProject
//
//  Created by Oksana Poliakova on 29.05.2022.
//

import UIKit

// MARK: - AppCoordinator

class AppCoordinator: Coordinator {
    
    // MARK: - Properties
    
    var navigationController: UINavigationController
    var isLoggedIn: Bool = false
    
    // MARK: - Init
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    // MARK: - Logic
    
    func startScreen() {
        if isLoggedIn {
            showMainScreen(login: User.logins[0].login)
        } else {
            showLoginScreen()
        }
    }
    
    func showLoginScreen() {
        let vc = LoginViewController.createObject()
        vc.coordinator = self
        vc.viewModel = LoginScreenViewModel()
        navigationController.pushViewController(vc, animated: true)
    }
    
    func showMainScreen(login: String?) {
        guard let login = login else {
            return
        }

        let vc = MainViewController.createObject()
        let viewModel = MainScreenViewModel(login: login)
        vc.coordinator = self
        vc.viewModel = viewModel
        navigationController.viewControllers.removeAll()
        navigationController.pushViewController(vc, animated: true)
    }
    
    func showDetailScreen() {
        let vc = DetailViewController.createObject()
        let viewModel = DetailScreenViewModel()
        viewModel.model = UserData.userData
        vc.coordinator = self
        vc.viewModel = viewModel
        navigationController.pushViewController(vc, animated: true)
        
    }
}
