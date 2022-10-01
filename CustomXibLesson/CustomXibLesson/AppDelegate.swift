//
//  AppDelegate.swift
//  CustomXibLesson
//
//  Created by Azimjon on 23/09/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow()
        let homeVC = HomeVC(nibName: "HomeVC", bundle: nil)
        window?.rootViewController = homeVC
        window?.makeKeyAndVisible()
        
        return true
    }

   


}

