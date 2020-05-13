//
//  MainTabBarController.swift
//  SNavigatorDemo
//
//  Created by Alex Nagy on 04/05/2020.
//  Copyright © 2020 Alex Nagy. All rights reserved.
//

import UIKit
import SparkUI

class MainTabBarController: UITabBarController {
    
    let feedNavigator = FeedNavigator()
    let homeNavigator = HomeNavigator()
    
//    let feedViewController: FeedViewController = {
//        let controller = FeedViewController()
//        controller.setTabBarItem(selectedImageSystemImageName: "bubble.left.and.bubble.right.fill", unselectedImageSystemImageName: "bubble.left.and.bubble.right", selectedColor: .systemBlue, unSelectedColor: .systemGray3, title: "Feed")
//        return controller
//    }()
//
//    let homeViewController: HomeViewController = {
//        let controller = HomeViewController()
//        controller.setTabBarItem(selectedImageSystemImageName: "house.fill", unselectedImageSystemImageName: "house", selectedColor: .systemBlue, unSelectedColor: .systemGray3, title: "Home")
//        return controller
//    }()
//
//    lazy var feedNavController = UINavigationController(rootViewController: feedViewController)
//    lazy var homeNavController = UINavigationController(rootViewController: homeViewController)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        feedNavigator.start()
        homeNavigator.start()
        
        viewControllers = [
            feedNavigator.navigation,
            homeNavigator.navigation
//            feedNavController,
//            homeNavController
        ]
        
        selectedIndex = TabBarTag.one.rawValue
    }
}
