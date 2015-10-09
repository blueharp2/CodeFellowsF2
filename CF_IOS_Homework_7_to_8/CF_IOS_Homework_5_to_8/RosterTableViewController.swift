//
//  RosterTableViewController.swift
//  CF_IOS_Homework_5_to_8
//
//  Created by Lindsey on 10/4/15.
//  Copyright © 2015 Lindsey Boggio. All rights reserved.
//

import UIKit

class RosterTableViewController: UIViewController, UITableViewDataSource {
  
  var people = [Person]()
  
  
  @IBOutlet weak var tableView: UITableView!
  override func viewDidLoad() {
    super.viewDidLoad()
  tableView.dataSource = self
    
    let me = Person (fname: "Lindsey", lname: "Boggio")
    let brad = Person (fname: "Brad", lname: "Johnson")
    let jake = Person (fname: "Jake", lname: "Hawken")
    people.append(me)
    people.append(brad)
    people.append(jake)
    }
  
  override func viewWillAppear(animated: Bool) {
    super.viewWillAppear(animated)
    
    tableView.reloadData()
  }
  
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    
    if segue.identifier == "ShowPersonDetail" {
      if let destinationViewController = segue.destinationViewController as?
        PersonDetailViewController {
        
        if let selectedIndexPath = tableView.indexPathForSelectedRow {
          let selectedRow = selectedIndexPath.row
          let chosenPerson = people[selectedRow]
          
          destinationViewController.selectedPerson = chosenPerson
        }
      }
    }
  }
  
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
    return people.count
    }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
    let cell = tableView.dequeueReusableCellWithIdentifier("RosterCell", forIndexPath: indexPath)
    
    let person = people[indexPath.row]
    cell.textLabel?.text = person.firstName + " " + person.lastName
    
    return cell
  }
  
}
