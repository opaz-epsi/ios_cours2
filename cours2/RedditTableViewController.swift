//
//  RedditTableViewController.swift
//  cours2
//
//  Created by Ophir on 07/10/15.
//  Copyright © 2015 epsi. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

struct RedditPost {
    var title:String
    var url:String
}

class RedditTableViewController: UITableViewController {

    var posts:Array<RedditPost> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Alamofire.request(.GET, "https://www.reddit.com/r/swift.json")
        .responseData { response in
            let responseData = JSON(data: response.data!)
            let postsData = responseData["data"]["children"]
            
            for (_, postData) in postsData {
                let title = postData["data"]["title"].string!
                let url = postData["data"]["url"].string!
                let post = RedditPost(title: title, url: url)
                
                self.posts.append(post)
            }
            print("posts trouvés : \(self.posts.count)")
            self.tableView.reloadData()
        }
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.posts.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("PostCell", forIndexPath: indexPath) as! PostCell

        cell.postTitle.text = self.posts[indexPath.row].title
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let post = self.posts[indexPath.row]
        UIApplication.sharedApplication().openURL(NSURL(string: post.url)!)
    }
}
