//
//  AddViewController.swift
//  Lesson03
//
//  Created by Monica He on 2/2/15.
//  Copyright (c) 2015 General Assembly. All rights reserved.
//

import UIKit

protocol ToDo {
    func addToDoToArray(todoName: String)
}

class AddViewController: UIViewController {
    
    @IBOutlet weak var addTextBox: UITextField!
    
    var delegate: ToDo?
    
    @IBAction func saveAndGoBack(sender: AnyObject) {
        self.delegate?.addToDoToArray(addTextBox.text)
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
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
