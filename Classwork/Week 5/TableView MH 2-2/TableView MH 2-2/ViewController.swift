//
//  ViewController.swift
//  TableView MH 2-2
//
//  Created by Monica He on 2/2/15.
//  Copyright (c) 2015 Monica He. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate
, UITableViewDataSource, UITextFieldDelegate {
    
    var gaCampuses: [String] = []
  
//  var gaCampuses = ["Washington DC", "New York", "Los Angeles", "Hong Kong", "Atlanta"]
  
    @IBOutlet weak var stuffTextField: UITextField!
    @IBOutlet weak var campusesTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//1: Add UITextFieldDelegate protocol
//2: connect Text field outlet
//3: Tie textfield.delegate = self
//4. Add the methods - text field method
        
        if gaCampuses.isEmpty {
            println("Your table view is empty")
            campusesTable.hidden = true
        }
        stuffTextField.delegate = self
    }
    
    func textfieldshouldreturn(textField: UITextField) -> Bool {
        println("Return key pressed")
        textField.resignFirstResponder()
        return true
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
            return 1
        }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return self.gaCampuses.count
        }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CellIdentifier") as? UITableViewCell ?? UITableViewCell(style: .Default, reuseIdentifier: "CellIdentifier")

        if indexPath.row % 2 == 0 {
            
            cell.backgroundColor = UIColor.redColor()
        }
        
        cell.textLabel?.text = self.gaCampuses[indexPath.row]
        return cell
    }

    
}

//1. In our "add new" screen, check if the text field is empty
//2. If the text field is empty hide the keyboard, and display a label telling the user to fill something in
//Bonus: Remove the table view controller and replace it with a table view