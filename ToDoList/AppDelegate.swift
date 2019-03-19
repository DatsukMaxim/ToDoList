//
//  AppDelegate.swift
//  ToDoList
//
//  Created by Maxim Datsuk on 11.03.2019.
//  Copyright © 2019 Maxim Datsuk. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    private let window: UIWindow?

    override init(){
        window = UIWindow(frame: UIScreen.main.bounds)
    }

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
        ) -> Bool {
        let viewController = TasksViewController()
        let navigationController = UINavigationController(rootViewController: UIViewController)

        window.rootViewController = viewController
        window.makeKeyAndVisible()
        return true
    }
}
