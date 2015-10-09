//
//  RosterTableViewController.swift
//  CF_IOS_Homework_5_to_8
//
//  Created by Lindsey on 10/4/15.
//  Copyright © 2015 Lindsey Boggio. All rights reserved.
//

import UIKit

class RosterTableViewController: UIViewController, UITableViewDataSource {

  let names = ["Lindsey Boggio", "Brad Johnson", "Jake Hawken"]
  
  //let names = [Person (fname: "Lindsey", lname: "Boggio"), Person (fname: "Brad", lname: "Johnson"), Person (fname: "Jake", lname: "Hawken")]
  
  
  @IBOutlet weak var tableView: UITableView!
  override func viewDidLoad() {
    super.viewDidLoad()
  tableView.dataSource = self
    }
  
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    
    if segue.identifier == "ShowPersonDetail" {
      if let destinationViewController = segue.destinationViewController as? PersonDetailViewController {
        
        if let selectedIndexPath = tableView.indexPathForSelectedRow {
          let selectedRow = selectedIndexPath.row
          let selectedName = names[selectedRow]
          
          destinationViewController.selectedName = selectedName
        }
      }
    }
  }
  
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
    return names.count
    }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
    let cell = tableView.dequeueReusableCellWithIdentifier("RosterCell", forIndexPath: indexPath)
    
    let name = names[indexPath.row]
    cell.textLabel?.text = name
    //cell.textLabel?.text = "\(names)"
    
    return cell
  }
  
}
