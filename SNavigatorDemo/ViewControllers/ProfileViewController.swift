//
//  ProfileViewController.swift
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

class ProfileViewController: SViewController {
    
    weak var navigator: HomeNavigator?
    
    var uid: String? {
        didSet {
            guard let uid = uid else { return }
            title = uid
        }
    }
    
    let button0 = UIButton().text("Back").text(color: .systemBlue).bold()
    let button1 = UIButton().text("Dismiss from Sheet").text(color: .systemBlue).bold()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        stack(.vertical)(
            button0,
            button1,
            Spacer()
            ).insetting(by: 12).fillingParent().layout(in: container)
    }
    
    override func observe() {
        super.observe()
        
        button0.reactive.tap.observeNext { [weak self] in
            guard let self = self else { return }
            self.navigator?.pop()
            
//            self.navigationController?.popViewController(animated: true)
        }.dispose(in: bag)
        
        button1.reactive.tap.observeNext { [weak self] in
            guard let self = self else { return }
            self.navigator?.dismiss()
            
//            self.dismiss(animated: true)
        }.dispose(in: bag)
    }
    
}

