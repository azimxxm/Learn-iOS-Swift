//
//  AppDelegate.swift
//  Task1
//
//  Created by Azimjon Abdurasulov on 28/10/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow()
        let loginVC = LoginVC(nibName: "LoginVC", bundle: nil)
        let navLoginVC = UINavigationController(rootViewController: loginVC)
        loginVC.userType = .login
        window?.rootViewController = navLoginVC
        window?.makeKeyAndVisible()
        return true
    }


}

