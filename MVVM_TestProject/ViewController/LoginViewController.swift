//
//  ViewController.swift
//  MVVM_TestProject
//
//  Created by Oksana Poliakova on 27.05.2022.
//

import UIKit

final class LoginViewController: UIViewController, Storyboardable {
    // MARK: - Properties
    
    @IBOutlet weak private var loginTextField: UITextField!
    @IBOutlet weak private var passwordTextField: UITextField!
    @IBOutlet weak private var loginButton: UIButton!
    @IBOutlet weak private var statusLabel: UILabel!
    
    var viewModel: LoginViewModel?
    var coordinator: AppCoordinator?
    
    // MARK: - ViewController life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    // MARK: - SetupUI
    
    private func setupUI() {
        statusLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        if UserDefaultsManager.shared.isAuthorized {
            coordinator?.showMain(login: loginTextField.text ?? "")
        }
    }
    
    // MARK: - IBActions
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        viewModel?.userButtonPressed(login: loginTextField.text ?? "", password: passwordTextField.text ?? "") { [weak self] authorisationType in
            self?.statusLabel.text = authorisationType.text
            self?.statusLabel.textColor = authorisationType.color
            if UserDefaultsManager.shared.isAuthorized {
                self?.coordinator?.showMain(login: self?.loginTextField.text ?? "")
            }
        }
    }
}

