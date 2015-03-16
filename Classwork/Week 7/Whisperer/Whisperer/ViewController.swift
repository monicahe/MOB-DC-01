//
//  ViewController.swift
//  Whisperer
//
//  Created by Monica He on 3/11/15.
//  Copyright (c) 2015 Monica He. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var whisper: UITextView!
    
    @IBOutlet weak var whisperCat: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func saveWhisper(sender: AnyObject) {
        
        var whisperP = PFObject(className: "Whisper")
        whisperP["Whisper"] = self.whisper.text
        whisperP["user"] = "Tedi"
        whisperP["category"] = self.whisperCat.text
        whisperP.saveInBackgroundWithBlock {
            (success: Bool, error: NSError!) -> Void in
//            give us a success back parameter in T/F
            
            if(success) {
                println(whisperP.objectId)
                println("Whisper saved successfully!")
                self.whisper.text = ""
                self.whisperCat.text = ""
                
            } else {
                println(error.description)
            }
        
        }
        
    }

    @IBAction func readWhispers(sender: AnyObject) {
        var whisperQuery = PFQuery(className: "Whisper")
        whisperQuery.whereKey("category", equalTo: self.whisperCat.text)
        whisperQuery.findObjectsInBackgroundWithBlock {
            (whisperObjects: [AnyObject]!, error: NSError!) -> Void in
            for whisper in whisperObjects {
                if let whisperTitle: AnyObject = whisper["whisper"] as? String {
                    println(whisperTitle)
                }
                
                }
            
            }
        }
        
        
    }
    


