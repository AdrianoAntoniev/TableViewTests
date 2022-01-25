//
//  SceneDelegate.swift
//  TesteTableView
//
//  Created by Adriano Rodrigues Vieira on 25/01/22.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let ws = (scene as? UIWindowScene) else { return }                        
        
        window = UIWindow(windowScene: ws)
        window?.rootViewController = SplashViewController(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
    }
}

