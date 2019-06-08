//
//  AppDelegate.swift
//  Hueman
//
//  Created by Arvid Kongstad on 08/06/2019.
//  Copyright © 2019 Weekend Industries. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        print("Application did finish launching")
        return true
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        print("Application will enter foreground")
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        print("Application did become active")
    }

    func applicationWillResignActive(_ application: UIApplication) {
        print("Application will resign active")
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        print("Application did enter background")
    }

    func applicationWillTerminate(_ application: UIApplication) {
        print("Application will terminate")
    }

}
