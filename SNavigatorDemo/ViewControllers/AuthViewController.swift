//
//  AuthViewController.swift
//  SNavigatorDemo
//
//  Created by Alex Nagy on 04/05/2020.
//  Copyright © 2020 Alex Nagy. All rights reserved.
//

import UIKit
import SparkUI
import ReactiveKit
import Layoutless
import Bond

class AuthViewController: SViewController {
    
    weak var navigator: (AuthNavigator & SignUpNavigatable & NewSheetNavigatable)?
    
    let button0 = UIButton().text("Sign up").text(color: .systemBlue).bold()
    let button1 = UIButton().text("Dismiss").text(color: .systemBlue).bold()
    let button2 = UIButton().text("New Sheet").text(color: .systemBlue).bold()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        stack(.vertical)(
            button0,
            button1,
            button2,
            Spacer()
            ).insetting(by: 12).fillingParent().layout(in: container)
    }

    override func observe() {
        super.observe()
        
        button0.reactive.tap.observeNext { [weak self] in
            guard let self = self else { return }
//            self.navigator?.pushSignUp()
            
            let controller = SignUpViewController()
            self.navigationController?.push(controller, animated: true)
        }.dispose(in: bag)
        
        button1.reactive.tap.observeNext { [weak self] in
            guard let self = self else { return }
//            self.navigator?.dismiss()
            
            self.dismiss(animated: true)
        }.dispose(in: bag)
        
        button2.reactive.tap.observeNext { [weak self] in
            guard let self = self else { return }
//            self.navigator?.presentNewSheet()
            
            let controller = NewSheetViewController()
            self.present(controller, animated: true)
        }.dispose(in: bag)
        
    }

}



