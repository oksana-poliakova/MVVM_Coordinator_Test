//
//  Coordinator.swift
//  MVVM_TestProject
//
//  Created by Oksana Poliakova on 29.05.2022.
//

import UIKit

// MARK: - Coordinator

protocol Coordinator {
    var navigationController: UINavigationController { get set }
    func startScreen()
}

