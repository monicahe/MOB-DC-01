//
//  SecondViewController.swift
//  Lesson03
//
//  Created by Monica He on 1/26/15.
//  Copyright (c) 2015 General Assembly. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBAction func dismissPage(sender: AnyObject) {
        
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
