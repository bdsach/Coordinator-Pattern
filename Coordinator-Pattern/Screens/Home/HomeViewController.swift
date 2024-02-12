//
//  HomeViewController.swift
//  Coordinator-Pattern
//
//  Created by Bandit Silachai on 12/2/24.
//

import UIKit

protocol HomeNavDelegate: AnyObject {
    
}

class HomeViewController: UIViewController {
    
    weak var navDelegate: HomeNavDelegate?
    
    lazy var homeText: UILabel = {
        let label = UILabel()
        label.text = "This is Home Screen"
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(homeText)
        view.backgroundColor = .white
        homeText.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            homeText.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            homeText.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        
        
    }
    
   
    
}
