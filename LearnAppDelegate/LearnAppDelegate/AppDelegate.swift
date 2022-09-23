//
//  AppDelegate.swift
//  LearnAppDelegate
//
//  Created by Azimjon on 22/09/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow()
        let firstVC = FirstVC.init(nibName: "FirstVC", bundle: nil)
        window?.rootViewController = firstVC
        window?.makeKeyAndVisible()
        
        return true
    }
    

}

