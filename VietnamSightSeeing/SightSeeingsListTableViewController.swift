//
//  SightSeeingsListTableViewController.swift
//  VietnamSightSeeing
//
//  Created by Thang H Tong on 10/14/15.
//  Copyright © 2015 Thang. All rights reserved.
//

import UIKit

class SightSeeingsListTableViewController: UITableViewController {
    
    
    // I create a variable sightSeeing and refer it to SightSeeing class to access the array. IT IS OPTIONAL TYPE
    var sightSeeing: SightSeeings?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        //Adding number of rows depending on number of sightseeings' objects
        return SightSeeingsController.sightSeeing.count
    }

   
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cellSightDisplay", forIndexPath: indexPath)
        
        // Configure the cell...
        
        let sightSeeingDisplay = SightSeeingsController.sightSeeing [indexPath.row]
        cell.detailTextLabel?.text = sightSeeingDisplay.location
        cell.textLabel?.text = sightSeeingDisplay.name
        cell.imageView?.image = UIImage(named: sightSeeingDisplay.imageName)
        
        

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
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
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */
    // MARK: - Navigation

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        sightSeeing = SightSeeingsController.sightSeeing[indexPath.row]
        self.performSegueWithIdentifier("displaySightDetail", sender: nil)
    }
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        // Identify the segue 
        if segue.identifier == "displaySightDetail" {
            
            // I create a variable to use and update later and set that equal my View Destination
            let displaySight = segue.destinationViewController as! SightSeeingsDetailViewController
            
            // because sightSeeing variable above is Optional so I use if let function to unwrap it
            if let sightSeeing = sightSeeing {
                
                // I assign the property for my variable displaySight (it holds my segue to my destination) to variable sightSeeing above and make it equal the property sightSeeing (it is from ListTableView)
                displaySight.sightSeeing = sightSeeing
            }
            
            
        }
        
    }
    

}
