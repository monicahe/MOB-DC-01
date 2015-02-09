//
//  ViewController.swift
//  GroupAssignment 2-4 MH
//
//  Created by Monica He on 2/4/15.
//  Copyright (c) 2015 Monica He. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
 
        var userNameTextBox = UITextField (frame: CGRect(x: 50, y: 100, width: 250, height: 30))
//        userNameTextBox.backgroundColor = UIColor.grayColor()
        userNameTextBox.layer.borderColor = UIColor.grayColor().CGColor
        userNameTextBox.layer.borderWidth = 1.0
        self.view.addSubview(userNameTextBox)
        
        var passwordTextBox = UITextField (frame: CGRect(x: 50, y: 200, width: 250, height: 30))
        passwordTextBox.backgroundColor = UIColor.blueColor()
        passwordTextBox.secureTextEntry = true
        self.view.addSubview(passwordTextBox)
        
        var loginButton = UIButton (frame: CGRect(x: 100, y: 300, width: 100, height: 50))
        loginButton.setTitle("LOG IN", forState: .Normal)
        loginButton.backgroundColor = UIColor.greenColor()
        loginButton.addTarget(self, action: "pressLoginButton:", forControlEvents: .TouchUpInside)
        self.view.addSubview(loginButton)

    }

    func pressLoginButton(sender: UIButton) {
        println("Log in Button is Pressed!")
    }
    
}

