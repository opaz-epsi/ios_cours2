//
//  DetailViewController.swift
//  cours2
//
//  Created by Ophir on 07/10/15.
//  Copyright © 2015 epsi. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var detailLabel:UILabel!
    var lineNumber:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailLabel.text = "\(lineNumber)"
    }
}
