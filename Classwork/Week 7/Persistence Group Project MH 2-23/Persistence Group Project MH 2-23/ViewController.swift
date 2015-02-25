//
//  ViewController.swift
//  Persistence Group Project MH 2-23
//
//  Created by Monica He on 2/23/15.
//  Copyright (c) 2015 Monica He. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaults = NSUserDefaults.standardUserDefaults()
        
        let athletesExist = defaults.objectForKey("athletes") as NSArray as Array
        
        
        println (athletesExist)
        
        
        var coachPath = NSBundle.mainBundle().pathForResource("Property List", ofType: "plist")
        
        var coaches = NSArray(contentsOfFile: coachPath!)
        
        
        println(coaches!)
        
//        
//        if athletesExist != 0 {
//            println(athletesExist)
// }
        
        }
        
        
        


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

