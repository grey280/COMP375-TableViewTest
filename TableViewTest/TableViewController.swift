//
//  TableViewController.swift
//  TableViewTest
//
//  Created by Grey Patterson on 2017-04-03.
//  Copyright © 2017 Grey Patterson. All rights reserved.
//

import UIKit

/// A basic UITableViewController
class TableViewController: UITableViewController {
    
    /// The list of items to display
    var items = ["item 1", "item 2", "item 3"]

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

    /// Gets the number of sections in the tableView
    ///
    /// - Parameter tableView: tableView to get number of sections for; ignored
    /// - Returns: 1
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    /// Get the count of items to show in the tableViewSection
    ///
    /// - Parameters:
    ///   - tableView: which tableView to use; ignored
    ///   - section: which section to use; ignored
    /// - Returns: the number of items to be displayed
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    
    /// Gets a cell to show
    ///
    /// - Parameters:
    ///   - tableView: which tableView to use; ignored
    ///   - indexPath: index of the item to get
    /// - Returns: the item at the given index
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell

        // Configure the cell...
        
        cell.cellLabel.text = items[indexPath.row]

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    
    /// Prepare for segue; assumes it's the one being called by a cell in the table
    ///
    /// - Parameters:
    ///   - segue: segue
    ///   - sender: the sender
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        print("prepare for segue")
        guard let destinationView = segue.destination as? DetailViewController else {
            // something went wrong; the destination wasn't a DetailViewController
            return
        }
        let sendingCellLabel = (sender as! UITableViewCell).textLabel?.text ?? "item -1"
        destinationView.titleLabelText = sendingCellLabel
    }
 

}
