//
//  ViewController.swift
//  singleSignInFB
//
//  Created by Buwaneka De Silva on 9/2/18.
//  Copyright © 2018 Buwaneka De Silva. All rights reserved.
//

import UIKit
import Firebase
import FBSDKLoginKit
import FBSDKCoreKit

class ViewController: UIViewController, FBSDKLoginButtonDelegate {
    
    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
        
    }
    
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupFBSignInButton()
    }

    fileprivate func setupFBSignInButton(){
        let fbLogin = FBSDKLoginButton()
        view.addSubview(fbLogin)
        fbLogin.readPermissions = ["public_profile","email"]
        fbLogin.frame = CGRect(x: 15, y: 620, width: view.frame.width - 32, height: 50)
        if (FBSDKAccessToken.current()) != nil{
            print("Fetch it again")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

