//
//  ViewController.swift
//  AutoLayout2
//
//  Created by Monica He on 2/9/15.
//  Copyright (c) 2015 Monica He. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var vertalSpacing: NSLayoutConstraint!
    
    
    @IBAction func changeSpaceofMouth(sender: AnyObject) {
        self.vertalSpacing.constant = 100
        
        UIView.animateWithDuration(3, animations: {
            self.view.layoutIfNeeded()
        
        })
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

