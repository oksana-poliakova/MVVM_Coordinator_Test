//
//  DetailViewController.swift
//  MVVM_TestProject
//
//  Created by Oksana Poliakova on 29.05.2022.
//

import UIKit

class DetailViewController: UIViewController, Storyboardable {
    
    weak var coordinator: AppCoordinator?
    var viewModel: DetailViewModel?

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()

    }

    private func updateUI() {
        nameLabel.text = viewModel?.model?.name
        cityLabel.text = viewModel?.model?.city
        emailLabel.text = viewModel?.model?.email
        phoneLabel.text = viewModel?.model?.phone
    }
}
