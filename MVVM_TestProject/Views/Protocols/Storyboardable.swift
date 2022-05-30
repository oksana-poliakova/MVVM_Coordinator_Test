//
//  Storyboardable.swift
//  MVVM_TestProject
//
//  Created by Oksana Poliakova on 29.05.2022.
//

import UIKit

protocol Storyboardable {
    static func createObject() -> Self
}

extension Storyboardable where Self: UIViewController {
    static func createObject() -> Self {
        let id = String(describing: self)
        guard let storyboard = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: id) as? Self else { return UIViewController() as? Self ?? Self() }
        return storyboard
        
    }
}
