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
        controller.setTabBarItem(selectedImageSystemImageName: "bubble.left.and.bubble.right.fill", unselectedImageSystemImageName: "bubble.left.and.bubble.right", selectedColor: .systemBlue, unSelectedColor: .systemGray3, title: "Feed")
        controller.navigator = self
        navigation.display(controller)
    }
}
