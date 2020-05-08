//
//  FeedNavigator.swift
//  SNavigatorDemo
//
//  Created by Alex Nagy on 08/05/2020.
//  Copyright © 2020 Alex Nagy. All rights reserved.
//

import Foundation
import UIKit
import SparkUI

class FeedNavigator: Navigator {
    override func start() {
        super.start()
        
        let controller = FeedViewController()
        controller.tabBarItem = UITabBarItem(title: "Feed", image: UIImage(systemName: "bubble.left.and.bubble.right.fill"), tag: 0)
        controller.title = "Feed"
        controller.navigator = self
        navigation.display(controller)
    }
}
