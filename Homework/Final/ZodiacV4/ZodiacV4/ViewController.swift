//
//  ViewController.swift
//  ZodiacV4
//
//  Created by Monica He on 3/22/15.
//  Copyright (c) 2015 Monica He. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func showRat(sender: AnyObject) {
        
        var flashVC = self.storyboard?.instantiateViewControllerWithIdentifier("flashVC") as FlashCardViewController
        
        self.presentViewController(flashVC, animated: true, completion: nil)
        
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

