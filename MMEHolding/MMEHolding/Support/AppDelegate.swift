//
//  AppDelegate.swift
//  MMEHolding
//
//  Created by Azimjon on 30/09/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow()
        let screen1 = Screen1(nibName: "Screen1", bundle: nil)
        window?.rootViewController = screen1
        window?.makeKeyAndVisible()
        return true
    }

    

}

