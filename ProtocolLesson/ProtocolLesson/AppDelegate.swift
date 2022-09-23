//
//  AppDelegate.swift
//  ProtocolLesson
//
//  Created by Azimjon on 23/09/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow()
        let firstVC = FirstVC(nibName: "FirstVC", bundle: nil)
        window?.rootViewController = firstVC
        window?.makeKeyAndVisible()
        
        return true
    }
    

    

}

