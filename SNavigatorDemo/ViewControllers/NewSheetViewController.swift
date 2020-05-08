//
//  NewSheetViewController.swift
//  SNavigatorDemo
//
//  Created by Alex Nagy on 07/05/2020.
//  Copyright © 2020 Alex Nagy. All rights reserved.
//

import UIKit
import SparkUI
import ReactiveKit
import Layoutless
import Bond


class NewSheetViewController: SViewController {
    
    let label = UILabel().text("New Sheet").text(color: .systemBlack).textAlignment(.center)
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        stack(.vertical)(
            label,
            Spacer()
            ).insetting(by: 12).fillingParent().layout(in: container)
    }
}
