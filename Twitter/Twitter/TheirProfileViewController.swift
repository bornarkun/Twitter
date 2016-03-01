//
//  TheirProfileViewController.swift
//  Twitter
//
//  Created by Kevin Ho on 2/29/16.
//  Copyright © 2016 KevinHo. All rights reserved.
//

import UIKit

class TheirProfileViewController: UIViewController {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var username: UILabel!
    @IBOutlet weak var handle: UILabel!
    @IBOutlet weak var tweetsnumber: UILabel!
    @IBOutlet weak var following: UILabel!
    @IBOutlet weak var followers: UILabel!
    
    var user: User?
    var tweet: Tweet!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        username.text = tweet.user!.name as? String
        profileImage.setImageWithURL(tweet.user!.profileUrl!)
        handle.text = "@\(tweet.user!.screenname!)" as String
        
        followers.text = "\((tweet.user!.userFollowersCount!))"
        following.text = "\((tweet.user!.userFollowingCount!))"
        tweetsnumber.text = "\((tweet.user!.userTweetCount!))"
        
        profileImage.layer.cornerRadius = 7

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
