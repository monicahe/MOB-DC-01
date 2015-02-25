//
//  ViewController.swift
//  DataPersistence MH 2-23
//
//  Created by Monica He on 2/23/15.
//  Copyright (c) 2015 Monica He. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var helloLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = NSUserDefaults.standardUserDefaults()
//        defaults.setObject("light", forKey: "theme")
        
        let theme = defaults.objectForKey("theme") as String

//  Need to type-cast it "as String" to get rid of the yellow triangle
        
//        println(theme)
        
        if theme == "dark" {
            self.view.backgroundColor = UIColor.blackColor()
            self.helloLabel.textColor = UIColor.whiteColor()
            
        }else {
            self.view.backgroundColor = UIColor.whiteColor()
            self.helloLabel.textColor = UIColor.blackColor()
        }
        
        var booksPath = NSBundle.mainBundle().pathForResource("Books", ofType: "plist")
        
        
        
//        Instructs to look in the main bundle
//        booksPath is just a string
//        need to unpack booksPath - file does not exist
        
        var books = NSMutableArray(contentsOfFile:  booksPath!)
        
//        NSArray comes back only as read-only so have to use NSMutableArray for write-to plist
        
//        books![0]["Title"] = "Ena's World 2" DOES NOT WORK
        
//    println(books![0])
        
        books![0].setValue("Ena's World 2", forKey: "Title")
//  But still needs to perssit the data
        
        books?.writeToFile(booksPath!, atomically: true)
//        Does not work in XCode - in Apple, programmatically, it should work
//        The Apple simulator does not change any files in the main budle files
        
        println(books!)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

