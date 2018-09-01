//
//  ViewController.swift
//  TheSocialLogin
//
//  Created by Buwaneka De Silva on 9/2/18.
//  Copyright © 2018 Buwaneka De Silva. All rights reserved.
//

import UIKit
import Firebase
import GoogleSignIn
import FBSDKCoreKit
import FBSDKLoginKit
import TwitterKit

class ViewController: UIViewController,FBSDKLoginButtonDelegate,GIDSignInUIDelegate {
    
    //Facebook Auth Logic
    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
        
    }
    
    //Facebook Logout
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
        
    }
    
    //Facebook button
    fileprivate func setupFBSignInButton(){
        let fbLogin = FBSDKLoginButton()
        view.addSubview(fbLogin)
        fbLogin.readPermissions = ["public_profile","email"]
        fbLogin.frame = CGRect(x: 15, y: 620, width: view.frame.width - 32, height: 50)
        if (FBSDKAccessToken.current()) != nil{
            print("Fetch it again")
        }
    }
    
    //Google Button
    fileprivate func setupGoogleSignInButton(){
        let googleLogin = GIDSignInButton()
        googleLogin.frame = CGRect(x: 15, y: 560, width: view.frame.width - 32, height: 50)
        view.addSubview(googleLogin)
        GIDSignIn.sharedInstance().uiDelegate = self
    }
    
    //Twitter Button & Auth Logic
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
        logInButton.frame = CGRect(x: 15, y: 500, width: view.frame.width - 32, height: 50)
        self.view.addSubview(logInButton)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Loads Logic
        setupFBSignInButton()
        setupGoogleSignInButton()
        setupTwitterButton()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

