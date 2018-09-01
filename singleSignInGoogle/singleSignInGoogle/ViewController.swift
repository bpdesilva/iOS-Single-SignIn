//
//  ViewController.swift
//  singleSignInGoogle
//
//  Created by Buwaneka De Silva on 9/2/18.
//  Copyright © 2018 Buwaneka De Silva. All rights reserved.
//

import UIKit
import Firebase
import GoogleSignIn

class ViewController: UIViewController, GIDSignInUIDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupGoogleSignInButton()
    }
    
    //Google SignIn
    fileprivate func setupGoogleSignInButton(){
        let googleLogin = GIDSignInButton()
        googleLogin.frame = CGRect(x: 15, y: 560, width: view.frame.width - 32, height: 50)
        view.addSubview(googleLogin)
        GIDSignIn.sharedInstance().uiDelegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

