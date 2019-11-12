//
//  AppDelegate.swift
//  SaloonApp
//
//  Created by haider ali on 07/11/2019.
//  Copyright © 2019 haider ali. All rights reserved.
//

import UIKit
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        
        FirebaseApp.configure()
        
//        self.window = UIWindow(frame: UIScreen.main.bounds)
//
//        let storyboard = UIStoryboard.init(name: "LoginSignUp", bundle: nil)
//        let viewController = storyboard.instantiateViewController(withIdentifier: "LoginVC") as! LoginViewController
//        let navigationController = UINavigationController.init(rootViewController: viewController)
//        self.window?.rootViewController = navigationController
//
//        self.window?.makeKeyAndVisible()
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

