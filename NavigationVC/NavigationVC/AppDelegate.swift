//
//  AppDelegate.swift
//  NavigationVC
//
//  Created by Azimjon on 01/10/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow()
        window?.rootViewController = UINavigationController(rootViewController: RegisterVC(nibName: "RegisterVC", bundle: nil))
        window?.makeKeyAndVisible()
        return true
    }

}

