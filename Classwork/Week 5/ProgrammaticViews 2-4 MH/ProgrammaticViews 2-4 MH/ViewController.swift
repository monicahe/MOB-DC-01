//
//  ViewController.swift
//  ProgrammaticViews 2-4 MH
//
//  Created by Monica He on 2/4/15.
//  Copyright (c) 2015 Monica He. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var redBox = UIView(frame: CGRect(x: 50, y: 50, width: 200, height: 200))
//        frame is a struct that goes through all the properties
        
        redBox.backgroundColor = UIColor.redColor()
        redBox.layer.cornerRadius = 50
//        Gives it a round corner
        redBox.autoresizingMask = UIViewAutoresizing.FlexibleLeftMargin | UIViewAutoresizing.FlexibleBottomMargin
        self.view.addSubview(redBox)
        
        var redBoxLabel = UILabel(frame: CGRect(x: 0, y: 50, width: redBox.frame.width, height: 30))
        redBoxLabel.text = "Hello world"
        redBoxLabel.backgroundColor = UIColor.yellowColor()
        redBoxLabel.textColor = UIColor.whiteColor()
//        redBoxLabel.textAlignment = .Center
        redBox.addSubview(redBoxLabel)
        
        var actionBtn = UIButton(frame: CGRect(x: 0, y: 300, width: self.view.frame.width, height: 30))
        actionBtn.setTitle("Click me!", forState: .Normal)
        actionBtn.backgroundColor = UIColor.greenColor()
        actionBtn.autoresizingMask = UIViewAutoresizing.FlexibleWidth
//        Spring with flexible width
        actionBtn.addTarget(self, action: "pressedCodedBtn:", forControlEvents: .TouchUpInside)
        self.view.addSubview(actionBtn)

//        var forestImg = UIImage(named: "12.jpg")
//        var forestImagView = UIImageView(image: forestImg)
//        forestImagView.frame = CGRect(x: 50, y: 350, width: forestImg!.size.width/2, height:      forestImg!.size.height/2)
//        forestImagView.autoresizingMask =     UIViewAutoresizing.FlexibleTopMargin
//        self.view.addSubview(forestImagView)
        
        var greenBox = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 150))
        greenBox.backgroundColor = UIColor.greenColor()
        
        var yellowBox = UIView(frame: CGRect(x: 0, y: 150, width: 200, height: 150))
        yellowBox.backgroundColor = UIColor.yellowColor()
        
        var purpleBox = UIView(frame: CGRect(x: 0, y: 300, width: 200,  height: 150))
        purpleBox.backgroundColor = UIColor.purpleColor()
        
        var boxScrollView = UIScrollView(frame: CGRect(x: 50, y: 350, width: 200, height: 300))
        boxScrollView.backgroundColor = UIColor.grayColor()
        boxScrollView.contentSize = CGSize(width: 200, height: 600)
        self.view.addSubview(boxScrollView)
        
        boxScrollView.addSubview(greenBox)
        boxScrollView.addSubview(yellowBox)
        boxScrollView.addSubview(purpleBox)
        
    }
    
    func pressedCodedBtn(sender: UIButton) {
        println("Hello world")
        sender.removeFromSuperview()
        
    }

}

