//
//  AppNavCoordinator.swift
//  Coordinator-Pattern
//
//  Created by Bandit Silachai on 12/2/24.
//

import UIKit

class AppNavCoordinator {
    var window: UIWindow
    var presenter: UINavigationController
    
    init(window: UIWindow) {
        self.window = window
        self.presenter = UINavigationController()
        window.rootViewController = presenter
        window.makeKeyAndVisible()
    }
    
    func start() {
        showLoginScreen()
    }
}

// MARK: - Screen
extension AppNavCoordinator {
    func showLoginScreen() {
        let controller = LoginViewController()
        controller.navDelegate = self
        presenter.setViewControllers([controller], animated: false)
    }
    
    func showHomeScreen() {
        let controller = HomeViewController()
        controller.navDelegate = self
        presenter.pushViewController(controller, animated: true)
    }
}


// MARK: - LoginNavDelegate
extension AppNavCoordinator: LoginNavDelegate {
    func onHomeTapped() {
        showHomeScreen()
    }
}


// MARK: - HomeNavDelegate
extension AppNavCoordinator: HomeNavDelegate {
    
}
