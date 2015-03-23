
//  ViewController.swift
//  ZodiacVersion1
//
//  Created by Monica He on 3/18/15.
//  Copyright (c) 2015 Monica He. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBAction func showRat(sender: AnyObject) {
        
        var flashVC = self.storyboard?.instantiateViewControllerWithIdentifier("flashV") as FlashViewController
    
        self.presentViewController(flashVC, animated: true, completion: nil)
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
  
    }


}

