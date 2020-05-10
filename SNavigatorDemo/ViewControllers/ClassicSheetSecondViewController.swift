//
//  ClassicSheetSecondViewController.swift
//  SNavigatorDemo
//
//  Created by Alex Nagy on 08/05/2020.
//  Copyright © 2020 Alex Nagy. All rights reserved.
//

import UIKit
import SparkUI
import ReactiveKit
import Layoutless
import Bond


class ClassicSheetSecondViewController: SViewController {
    
    weak var navigator: HomeNavigator?
    
    let button0 = UIButton().text("Dismiss This Classic Sheet").text(color: .systemBlue).bold()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        stack(.vertical)(
            button0,
            Spacer()
            ).insetting(by: 12).fillingParent().layout(in: container)
    }
    
    override func observe() {
        super.observe()
        
        button0.reactive.tap.observeNext { [weak self] in
            guard let self = self else { return }
            self.navigator?.dismiss(animated: true)
        }.dispose(in: bag)
        
    }
}

