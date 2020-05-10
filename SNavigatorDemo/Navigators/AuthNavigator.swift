//
//  AuthNavigator.swift
//  SNavigatorDemo
//
//  Created by Alex Nagy on 05/05/2020.
//  Copyright © 2020 Alex Nagy. All rights reserved.
//

import Foundation
import UIKit
import SparkUI

class AuthNavigator: Navigator {
    
    weak var parentNavigator: HomeNavigator?
    
    override func start() {
        super.start()
        
        let controller = AuthViewController()
        controller.title = "Auth"
        controller.navigator = self
        controller.setAsRoot(for: self, with: parentNavigator)
    }
    
}

protocol SignUpNavigatable: AnyObject {
    func pushSignUp()
}

extension AuthNavigator: SignUpNavigatable {
    func pushSignUp() {
        let controller = SignUpViewController()
        controller.navigator = self
        navigation.push(controller)
    }
}

protocol NewSheetNavigatable: AnyObject {
    func presentNewSheet()
}

extension AuthNavigator: NewSheetNavigatable {
    func presentNewSheet() {
        let controller = NewSheetViewController()
        present(controller)
    }
}
