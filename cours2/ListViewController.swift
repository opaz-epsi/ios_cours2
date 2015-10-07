//
//  ListViewController.swift
//  cours2
//
//  Created by Ophir on 07/10/15.
//  Copyright © 2015 epsi. All rights reserved.
//

import UIKit

class ListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var lineTableView:UITableView!
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("CellIdentifier", forIndexPath: indexPath) as! LineCell
        
        cell.backgroundColor = UIColor.whiteColor()
        if(indexPath.row == 5) {
            cell.backgroundColor = UIColor.redColor()
        }
        
        cell.lineLabel.text = "Line \(indexPath.row)"
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("detailSegue", sender: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    
        let detailViewController = segue.destinationViewController as! DetailViewController
        
        detailViewController.lineNumber = lineTableView.indexPathForSelectedRow!.row
        
    }
}
