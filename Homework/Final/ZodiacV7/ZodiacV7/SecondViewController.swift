//
//  SecondViewController.swift
//  ZodiacV7
//
//  Created by Monica He on 3/25/15.
//  Copyright (c) 2015 Monica He. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var letterView: UIImageView!

    @IBOutlet weak var pictureView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let singleTap = UITapGestureRecognizer(target: self, action: Selector ("tapped"))
        singleTap.numberOfTapsRequired = 1
        let singleTapTwo = UITapGestureRecognizer(target: self, action: Selector ("tapped"))
        singleTapTwo.numberOfTapsRequired = 1
        
        self.pictureView.userInteractionEnabled = true
        self.pictureView.addGestureRecognizer(singleTap)
        self.letterView.userInteractionEnabled = true
        self.letterView.addGestureRecognizer(singleTapTwo)
        
        self.letterView.image = UIImage(named: "Ox_character.png")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
