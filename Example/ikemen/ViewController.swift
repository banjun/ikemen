//
//  ViewController.swift
//  ikemen
//
//  Created by banjun on 10/20/2015.
//  Copyright (c) 2015 banjun. All rights reserved.
//

import UIKit
import Ikemen

class ViewController: UIViewController {
    private let nameLabel = UILabel() ※ {$0.text = "Name"}

    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.frame = view.bounds
        view.addSubview(nameLabel)
    }
}

