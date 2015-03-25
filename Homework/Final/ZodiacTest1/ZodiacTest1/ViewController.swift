//
//  ViewController.swift
//  ZodiacTest1
//
//  Created by Monica He on 3/23/15.
//  Copyright (c) 2015 Monica He. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func ViewRatCard(sender: AnyObject) {
        
        var showRat = self.storyboard?.instantiateViewControllerWithIdentifier("showRat") as RatFlashViewController
        
        self.presentViewController(showRat, animated: true, completion: nil)
        
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

