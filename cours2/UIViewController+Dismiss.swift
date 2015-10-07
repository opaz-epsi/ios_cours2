//
//  UIViewController+Dismiss.swift
//  cours2
//
//  Created by Ophir on 07/10/15.
//  Copyright © 2015 epsi. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    @IBAction func dismiss() {
        self.dismissViewControllerAnimated(true, completion:nil)
    }
}