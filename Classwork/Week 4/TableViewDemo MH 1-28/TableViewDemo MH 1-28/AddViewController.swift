//
//  AddViewController.swift
//  TableViewDemo MH 1-28
//
//  Created by Monica He on 1/28/15.
//  Copyright (c) 2015 Monica He. All rights reserved.
//

import UIKit

protocol Campus {
    func addCampusToArray(campusName: String)
}

class AddViewController: UIViewController, UITextFieldDelegate {
  
    @IBOutlet weak var addTextBox: UITextField!
    @IBOutlet weak var errorMessage: UILabel!
    
    var delegate: Campus?
    
    @IBOutlet weak var hiddenLabel: UILabel!
    @IBAction func saveAndGoBack(sender: AnyObject) {
        self.delegate?.addCampusToArray(addTextBox.text)
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func pressPostButton(sender: AnyObject) {
//        first step in setting notification
        NSNotificationCenter.defaultCenter().postNotificationName("unhideHiddenLabels", object: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.addTextBox.delegate = self
        self.errorMessage.hidden = true
        self.hiddenLabel.hidden = true
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "unhideCurrentLabels:",
            name: "unhideHiddenLabels",
            object: nil)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "textHasChanged:", name: UITextFieldTextDidChangeNotification, object: nil)
    }
    
    func textHasChanged(notification:NSNotification) {
        println("Horray, text has changed")
    }
    
    func unhideCurrentLabels(notification:NSNotification) {
        self.hiddenLabel.hidden = false
        println("Triggered unhideHiddenLabels notification")
        
    }
    
    func textfieldshouldreturn(textField: UITextField) -> Bool {
        if self.addTextBox.text.isEmpty {
          println("Your text field is empty, enter something!")
          textField.resignFirstResponder()
            self.errorMessage.hidden = false
            }else {
                self.errorMessage.hidden = true
        }
        return true
    }
    
        // Dispose of any resources that can be recreated.


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
