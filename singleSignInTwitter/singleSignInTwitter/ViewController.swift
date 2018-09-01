//
//  ViewController.swift
//  singleSignInTwitter
//
//  Created by Buwaneka De Silva on 9/2/18.
//  Copyright © 2018 Buwaneka De Silva. All rights reserved.
//

import UIKit
import TwitterKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupTwitterButton()
    }

    fileprivate func setupTwitterButton(){
        let logInButton = TWTRLogInButton(logInCompletion: { session, error in
            if (session != nil) {
                print("signed in as \(session?.userName)");
                let client = TWTRAPIClient.withCurrentUser()
                
                client.requestEmail { email, error in
                    if (email != nil) {
                        print("signed in as \(session?.userName)");
                    } else {
                        print("error: \(error?.localizedDescription)");
                    }
                }
            } else {
                print("error: \(error?.localizedDescription)");
            }
        })
        logInButton.frame = CGRect(x: 15, y: 480, width: view.frame.width - 32, height: 50)
        self.view.addSubview(logInButton)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

