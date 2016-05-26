//
//  AppDelegate.swift
//  DI&Frameworks
//
//  Created by Juan Cazalla Estrella on 25/5/16.
//  Copyright © 2016 Juan Cazalla Estrella. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        DependenciesContainer.registerDependencies()

        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        window?.makeKeyAndVisible()
        let searchViewController = DependenciesContainer.resolve(SearchViewController)
        let navigationController = UINavigationController(rootViewController: searchViewController)
        window?.rootViewController = navigationController

        return true
    }
}
