//
//  BaseTabBarController.swift
//  AppStoreJSONApis
//
//  Created by member on 2020/01/27.
//  Copyright © 2020 Shunta Nabezawa. All rights reserved.
//

import UIKit

class BaseTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        viewControllers = [
            createNavController(viewController: AppsPageController(), title: "Apps", imageName: "apps"),
            createNavController(viewController: AppsSearchController(), title: "Search", imageName: "search"),
            createNavController(viewController: TodayController(), title: "Today", imageName: "today_icon")
        ]
    }

    fileprivate func createNavController(viewController: UIViewController, title: String, imageName: String) -> UIViewController {

        let navController = UINavigationController(rootViewController: viewController)
        navController.navigationBar.prefersLargeTitles = true
        viewController.navigationItem.title = title
        viewController.view.backgroundColor = .white
        navController.tabBarItem.title = title
        navController.tabBarItem.image = UIImage(named: imageName)
        return navController
    }
}
