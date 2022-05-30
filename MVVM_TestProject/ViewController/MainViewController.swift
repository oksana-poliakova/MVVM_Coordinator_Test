//
//  MainViewController.swift
//  MVVM_TestProject
//
//  Created by Oksana Poliakova on 29.05.2022.
//

import UIKit

class MainViewController: UIViewController, Storyboardable {
    
    // MARK: - Properties
    
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var aboutButton: UIButton!
    
    weak var coordinator: AppCoordinator?
    var viewModel: MainScreenViewModel?

    // MARK: - ViewController life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainLabel.text = "Hello \(viewModel?.login ?? "Default")"
    }

    // MARK: - @IBActions
    
    @IBAction func aboutButtonPressed(_ sender: UIButton) {
        coordinator?.showDetailScreen()
    }
}
