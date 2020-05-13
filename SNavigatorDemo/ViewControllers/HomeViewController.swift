//
//  HomeViewController.swift
//  SNavigatorDemo
//
//  Created by Alex Nagy on 05/05/2020.
//  Copyright © 2020 Alex Nagy. All rights reserved.
//

import UIKit
import SparkUI
import ReactiveKit
import Layoutless
import Bond

class HomeViewController: SViewController {
    
    weak var navigator: (HomeNavigator & ProfileNavigatable & AuthNavigatable & ClassicSheetNavigatable)?
    
    let button0 = UIButton().text("Present Profile").text(color: .systemBlue).bold()
    let button1 = UIButton().text("Push Profile").text(color: .systemBlue).bold()
    let button2 = UIButton().text("Present Auth Navigation").text(color: .systemBlue).bold()
    let button3 = UIButton().text("Present First Classic Sheet").text(color: .systemBlue).bold()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        stack(.vertical, spacing: 15)(
            button0,
            button1,
            button2,
            button3,
            Spacer()
            ).insetting(by: 12).fillingParent().layout(in: container)
    }
    
    override func observe() {
        super.observe()
        
        button0.reactive.tap.observeNext { [weak self] in
            guard let self = self else { return }
//            self.navigator?.presentProfile(uid: "123456")
            
            let controller = ProfileViewController()
            controller.uid = "123456"
            self.present(controller, animated: true)
        }.dispose(in: bag)
        
        button1.reactive.tap.observeNext { [weak self] in
            guard let self = self else { return }
//            self.navigator?.pushProfile(uid: "123456")
            
            let controller = ProfileViewController()
            controller.uid = "123456"
            self.navigationController?.push(controller, animated: true)
        }.dispose(in: bag)
        
        button2.reactive.tap.observeNext { [weak self] in
            guard let self = self else { return }
//            self.navigator?.presentAuthNavigation()
            
            let controller = AuthViewController()
            let navController = UINavigationController(rootViewController: controller)
            self.present(navController, animated: true)
        }.dispose(in: bag)
        
        button3.reactive.tap.observeNext { [weak self] in
            guard let self = self else { return }
//            self.navigator?.presentFirstClassicSheet()
            
            let controller = ClassicSheetFirstViewController()
            self.present(controller, animated: true)
        }.dispose(in: bag)
    }
    
}
