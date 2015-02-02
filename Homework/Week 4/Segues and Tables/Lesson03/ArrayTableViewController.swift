
//
//  TableViewController.swift
//  TableViewDemo MH 1-28
//
//  Created by Monica He on 1/28/15.
//  Copyright (c) 2015 Monica He. All rights reserved.
//


import UIKit

class ArrayTableViewController: UITableViewController, ToDo {
    
    var todoArray = ["task a", "task b", "task c", "task d", "task e", "task f"]
    
    func addToDoToArray (todoName: String) {
        self.todoArray.append(todoName)
    }
    
    @IBAction func addToDo(sender: AnyObject) {
        var addVC=self.storyboard?.instantiateViewControllerWithIdentifier("addVC") as AddViewController
        addVC.delegate = self
        self.presentViewController(addVC, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.todoArray.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CellIdentifier") as? UITableViewCell ?? UITableViewCell(style: .Default, reuseIdentifier: "CellIdentifier")
        if indexPath.row % 2 == 0 {
            cell.backgroundColor = UIColor.yellowColor()
        }
        cell.textLabel?.text = self.todoArray[indexPath.row]
        return cell
    }
    
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            self.todoArray.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        }
    }
}

    /*
    TODO five: create an array of to do tasks inside this class
    TODO six: populate the table view with the contents of the newly created array.
    Bonus: Add delete cell on swipe feature.
    
        TODO five asks the user to create a subclass of the object displayed in the array, add an instance of that object to be displayed in the table view, then change the displayed string of the subclass to their liking (without changing the existing display code in the table view controller).
    */
    
//    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
//        return 1
//    }
//
//    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 0
//    }
//
//    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCellWithIdentifier("CellIdentifier") as? UITableViewCell ?? UITableViewCell(style: .Default, reuseIdentifier: "CellIdentifier")
    
        // Add code to populate cells
//        
//        return cell
//    }
//}