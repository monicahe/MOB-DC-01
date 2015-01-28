//
//  ViewController.swift
//  Table Views and Scenese MH 1-26
//
//  Created by Monica He on 1/26/15.
//  Copyright (c) 2015 Monica He. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultsLabel: UILabel!
    
    @IBOutlet weak var swipeView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initiateRightSwipeOnRedBox ()
        initiateDoubleTapOnRedBox ()
    }
    
    func initiateDoubleTapOnRedBox () {
        let dTap = UITapGestureRecognizer(target: self, action: "doubleTapped:")
        
        dTap.numberOfTapsRequired = 2
        
        self.swipeView.addGestureRecognizer(dTap)
    }
    
    func initiateRightSwipeOnRedBox (){
    
        let swipeR = UISwipeGestureRecognizer(target: self, action: "swipedRight:")
    
        swipeR.direction = UISwipeGestureRecognizerDirection.Right
    
        self.swipeView.addGestureRecognizer(swipeR)
    }
    
    func swipedRight (sender: UISwipeGestureRecognizer)
    {
        self.performSegueWithIdentifier("showSecondVC", sender: self)
        
//        self.resultsLabel.text = "You swiped right!"
        
    }

    func doubleTapped (sender: UITapGestureRecognizer)
    {
        var thirdVC = self.storyboard?.instantiateViewControllerWithIdentifier("thirdVC") as ThirdViewController
        
        self.presentViewController(thirdVC, animated: true, completion: nil)
        
//        UIView.animateWithDuration(1.0, animations: {
//        self.swipeView.backgroundColor = UIColor.blueColor()
//        self.resultsLabel.text = "You double tapped!"
//        })
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

