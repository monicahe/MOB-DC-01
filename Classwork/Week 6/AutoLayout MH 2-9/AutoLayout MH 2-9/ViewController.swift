//
//  ViewController.swift
//  AutoLayout MH 2-9
//
//  Created by Monica He on 2/9/15.
//  Copyright (c) 2015 Monica He. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var verticalSpacingBetweenPurpleGhostandPacman: NSLayoutConstraint!
   
    @IBAction func increaseDistanceBetweenPacmanAndGhost(sender: AnyObject) {
        
        self.verticalSpacingBetweenPurpleGhostandPacman.constant = 80
            
        UIView.animateWithDuration(1, animations: {
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

