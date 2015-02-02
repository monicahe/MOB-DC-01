//
//  TableViewController.swift
//  TableViewDemo MH 1-28
//
//  Created by Monica He on 1/28/15.
//  Copyright (c) 2015 Monica He. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController, Campus {

    var gaCampuses = ["Washington DC", "New York", "Los Angeles", "Hong Kong", "Atlanta"]
    
    func addCampusToArray(campusName: String) {
        self.gaCampuses.append(campusName)
    }
    
    @IBAction func addCampus(sender: AnyObject) {
        var addVC = self.storyboard?.instantiateViewControllerWithIdentifier("addVC") as AddViewController
        addVC.delegate = self
        self.presentViewController(addVC, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Sets the number of cells in the table to equal the number of items in our array
        return self.gaCampuses.count
    }
    
    // the count sets the array
    
    /*
    7. Update the tableView method with the cellForRowIndexPath paremeter to update all the cells with the array data. ex:
    */
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CellIdentifier") as? UITableViewCell ?? UITableViewCell(style: .Default, reuseIdentifier: "CellIdentifier")
        // Sets each cell to equal each item in the array
        
        if indexPath.row % 2 == 0 {
        
        cell.backgroundColor = UIColor.yellowColor()
        }
        
        cell.textLabel?.text = self.gaCampuses[indexPath.row]
        return cell
    }
    
    // sections, count, and index path are requirements for the table 
    // Here we only have one section, so don't need to use indexPath.section
    
    
    // 8. Removing table cell:
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            self.gaCampuses.removeAtIndex(indexPath.row)
            
            // Adding self.gaCampuses.removeAtIndex - means it will remove the value from the array
            
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        }
    }
    
//    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
//        // #warning Potentially incomplete method implementation.
//        // Return the number of sections.
//        return 1
//    }
//
//    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete method implementation.
//        // Return the number of rows in the section.
//        return self.gaCampuses.count
//    }
//    
//    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath) as UITableViewCell
//
//        // Configure the cell...
//
//        cell.textLabel?.text = self.gaCampuses[indexPath.row]
//        
//        return cell
//    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
