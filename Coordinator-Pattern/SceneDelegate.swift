//
//  SceneDelegate.swift
//  Coordinator-Pattern
//
//  Created by Bandit Silachai on 12/2/24.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var appNavCoordinator: AppNavCoordinator?

    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let window = UIWindow(windowScene: windowScene)
        self.window = window
        

        appNavCoordinator = AppNavCoordinator(window: window)
        appNavCoordinator?.start()
    }
}

