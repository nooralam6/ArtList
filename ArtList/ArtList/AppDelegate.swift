//
//  AppDelegate.swift
//  ArtList
//
//  Created by GENEXT-PC on 22/02/20.
//  Copyright © 2020 Nooralam Shaikh. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let search = SearchArtistModule().view
        let navigationController = UINavigationController(rootViewController: search)
        navigationController.navigationBar.prefersLargeTitles = true
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        
        return true
    }

}

