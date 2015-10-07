//
//  ViewController.swift
//  cours2
//
//  Created by Ophir on 07/10/15.
//  Copyright © 2015 epsi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var helloLabel: UILabel!
    @IBOutlet weak var inputField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        helloLabel.text = "Hello World"        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "redSegue") {
            let redViewController:RedViewController = segue.destinationViewController as! RedViewController
            
            redViewController.inputText = inputField.text
        }
    }
    
}

