//
//  SecondViewController.swift
//  Table Views and Scenese MH 1-26
//
//  Created by Monica He on 1/26/15.
//  Copyright (c) 2015 Monica He. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBAction func goBacktoFirstVC(sender: AnyObject) {
        self.navigationController?.popViewControllerAnimated(true)
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
