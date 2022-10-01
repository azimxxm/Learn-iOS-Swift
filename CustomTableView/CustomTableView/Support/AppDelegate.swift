//
//  AppDelegate.swift
//  CustomTableView
//
//  Created by Azimjon on 30/09/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow()
        let homeVC = HomeVC(nibName: "HomeVC", bundle: nil)
        window?.rootViewController = homeVC
        window?.makeKeyAndVisible()
        return true
    }

    


}

