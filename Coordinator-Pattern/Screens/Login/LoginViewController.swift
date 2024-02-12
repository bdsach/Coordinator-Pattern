//
//  LoginViewController.swift
//  Coordinator-Pattern
//
//  Created by Bandit Silachai on 12/2/24.
//

import UIKit

protocol LoginNavDelegate: AnyObject {
    func onHomeTapped()
}

class LoginViewController: UIViewController {
    weak var navDelegate: LoginNavDelegate?
    
    lazy private var toHomeButton: UIButton = {
        let button = UIButton()
        button.setTitle("To Home View", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)

        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(toHomeButton)
        toHomeButton.translatesAutoresizingMaskIntoConstraints = false
        toHomeButton.addTarget(self, action: #selector(handleHome), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            toHomeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            toHomeButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    @objc func handleHome() {
        navDelegate?.onHomeTapped()
    }
}
