//
//  ViewController.swift
//  Flat Files MH 2-25
//
//  Created by Monica He on 2/25/15.
//  Copyright (c) 2015 Monica He. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var tempPath = NSTemporaryDirectory() + "hello.txt"
        println(tempPath)
        
//        var stringToSave = "hello world!"
        var stringToSave = self.textView.text
        
        stringToSave.writeToFile(tempPath, atomically: true, encoding: NSUTF32StringEncoding, error: nil)
        
//        Path + file, content, and encoding
        
//        stringToSave
        
        var fileManager = NSFileManager()
        
    }
    
    @IBAction func loadData(sender: AnyObject) {
        
        var txtPath = NSTemporaryDirectory() + "hello.txt"
        
        var stringToLoad: NSString? = NSString(contentsOfFile: txtPath, encoding: NSUTF32StringEncoding, error: nil)
        
//        println("Loading content without checking if nil: \(stringToLoad)")
        
//        declaired string as optional, so has to unwrap
        
        if let loadedContent = stringToLoad {
            println("Content loaded! Content is: \(loadedContent)")
        } else {
            println("Could not load")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

