//
//  Coordinator.swift
//  MVVM_TestProject
//
//  Created by Oksana Poliakova on 29.05.2022.
//

import UIKit

protocol Coordinator {
    var navigationController: UINavigationController { get set }
    func start()
}

