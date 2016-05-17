//
//  ViewController.swift
//  BrotherVision
//
//  Created by hmerritt on 5/13/16.
//  Copyright © 2016 shedtechsolutions. All rights reserved.
//

import UIKit
import MapKit
import OAuthSwift

class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var searchText: UITextField!
    
    @IBOutlet weak var map: MKMapView!
    
   var oauthswift : OAuth1Swift! = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      oauthswift = OAuth1Swift(consumerKey: "OLpSexnZL53UHKEHZAspf7xmm", consumerSecret: "TOawLhdYDZlXKFgk31myKyrN7lJXOcm5u85VaYj8lJeQEL8gEL", requestTokenUrl: "https://api.twitter.com/oauth/request_token", authorizeUrl: "https://api.twitter.com/oauth/authorize", accessTokenUrl: "https://api.twitter.com/oauth/access_token")
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    
    @IBAction func goButton(sender: AnyObject)
    {
        oauthswift.client.get("https://api.twitter.com/1.1/search/tweets.json", success: { (data, response) in
            print("works")
            }) { (error) in
                print(error)
        }
    }


}

