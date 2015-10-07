//
//  AnimViewController.swift
//  cours2
//
//  Created by Ophir on 07/10/15.
//  Copyright © 2015 epsi. All rights reserved.
//

import UIKit

class AnimViewController: UIViewController {

    @IBOutlet weak var label:UILabel!
    @IBOutlet weak var labelLeftConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.alpha = 0.5
        
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        labelLeftConstraint.constant = 0
        self.view.layoutIfNeeded()
        self.label.layer.transform = CATransform3DMakeRotation(3.14/2, 0, 1, 1)
        
        labelLeftConstraint.constant = 200
        UIView.animateWithDuration(2) {
            self.view.layoutIfNeeded()
            self.label.alpha = 1
            self.label.layer.transform = CATransform3DIdentity
        }
    }

}
