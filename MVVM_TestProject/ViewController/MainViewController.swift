//
//  MainViewController.swift
//  MVVM_TestProject
//
//  Created by Oksana Poliakova on 29.05.2022.
//

import UIKit

class MainViewController: UIViewController, Storyboardable {
    
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var aboutButton: UIButton!
    
    weak var coordinator: AppCoordinator?
    var viewModel: MainViewModel?

    override func viewDidLoad() {
        super.viewDidLoad()
        mainLabel.text = "Hello \(viewModel?.login ?? "Default")"
    }

    @IBAction func aboutButtonPressed(_ sender: UIButton) {
        coordinator?.showDetail()
    }
}
