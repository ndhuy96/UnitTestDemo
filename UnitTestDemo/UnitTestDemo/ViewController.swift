//
//  ViewController.swift
//  UnitTestDemo
//
//  Created by nguyen.duc.huyb on 12/18/19.
//  Copyright © 2019 nguyen.duc.huyb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let ferrari = Car(type: .Sport, transmissionMode: .Drive)
        ferrari.start(minutes: 120)
        print(ferrari.miles) // => 140
    }
}

