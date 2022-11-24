//
//  SceneDelegate.swift
//  city_ios
//
//  Created by DREGE Thomas on 12/10/2022.
//

import Foundation
import UIKit
import SwiftUI

class SceneDelegate: NSObject ,UIWindowSceneDelegate, ObservableObject {
    
    var window: UIWindow?
    var navigation : CNavigation?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        let contentView = MainView()

        // Use a UIHostingController as window root view controller.
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            let navigation = CNavigation(window: window)
            let rootView = UIHostingController(rootView: contentView.environmentObject(navigation))

            window.rootViewController = rootView

            self.window = window
            self.navigation = navigation

            window.makeKeyAndVisible()
        }
    }
    
    func sceneWillEnterForeground(_ scene: UIScene) {
        // ...
    }
    
    func sceneDidBecomeActive(_ scene: UIScene) {
        // ...
    }
    
    func sceneWillResignActive(_ scene: UIScene) {
        // ...
    }
    
}
