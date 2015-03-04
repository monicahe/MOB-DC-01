//
//  ViewController.swift
//  Practice Flat File MH 2-25
//
//  Created by Monica He on 2/25/15.
//  Copyright (c) 2015 Monica He. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textInput: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        }

    @IBAction func saveData(sender: UIButton) {
        
        let fileManager = NSFileManager()
        
        let path = fileManager.URLsForDirectory(NSSearchPathDirectory.DocumentDirectory, inDomains: NSSearchPathDomainMask.UserDomainMask) as [NSURL]
        
//        This is now saved in an Array
        
        if path.count > 0 {
            let documentPath = path[0].relativePath! as String
            let mySavedPath = documentPath + "/file.txt"
            
            var stringToSave = self.textInput.text
            
            stringToSave.writeToFile(mySavedPath, atomically: true, encoding: NSUTF32StringEncoding, error: nil)
        }else {
            println ("Could not save")
        }

    }


    @IBAction func loadData(sender: UIButton) {
        
        let fileManager = NSFileManager()
        
        let path = fileManager.URLsForDirectory(NSSearchPathDirectory.DocumentDirectory, inDomains: NSSearchPathDomainMask.UserDomainMask) as [NSURL]
        
        if path.count > 0 {
            let documentPath = path[0].relativePath! as String
            let mySavedPath = documentPath + "/file.txt"
            
            var stringToLoad: NSString? = NSString(contentsOfFile: mySavedPath, encoding: NSUTF32StringEncoding, error: nil)
            
            if let loadedContent = stringToLoad {
                println("content loaded is: \(loadedContent)")
            } else {
                println ("Could not load")
            }
            
        }else {
            println ("Could not save")
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

