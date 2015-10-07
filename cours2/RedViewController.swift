//
//  RedViewController.swift
//  cours2
//
//  Created by Ophir on 07/10/15.
//  Copyright © 2015 epsi. All rights reserved.
//

import UIKit

class RedViewController: UIViewController {
    var inputText:String?
    @IBOutlet weak var inputLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        inputLabel.text = inputText
    }
}
