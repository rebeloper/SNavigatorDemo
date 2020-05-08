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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        feedNavigator.start()
        homeNavigator.start()
        
        viewControllers = [feedNavigator.navigation, homeNavigator.navigation]
        
        selectedIndex = 1
    }
}
