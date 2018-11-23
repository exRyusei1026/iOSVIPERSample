//
//  AppDelegate.swift
//  iOSVIPERSample
//
//  Created by 小林健人 on 2018/11/21.
//  Copyright © 2018 小林健人. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder {
    var window: UIWindow?
}

extension AppDelegate: UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        RootRouter().presentHomeScreen(in: window!)
        return true
    }
}
