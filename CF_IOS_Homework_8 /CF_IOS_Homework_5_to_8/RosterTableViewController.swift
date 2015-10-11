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
  
    if let peopleFromArchive = self.loadFromArchive() {
      people = peopleFromArchive
    } else {
    
    let me = Person (fname: "Lindsey", lname: "Boggio", photo: UIImage(named: "Lindsey.jpeg"))
    let brad = Person (fname: "Brad", lname: "Johnson", photo: UIImage(named: "Brad.jpeg"))
    let jake = Person (fname: "Jake", lname: "Hawken", photo: UIImage(named: "Jake.jpeg"))
    people.append(me)
    people.append(brad)
    people.append(jake)
    
  
    saveToArchive()
    }
  
    tableView.dataSource = self
  
  }
  
  override func viewWillAppear(animated: Bool) {
    super.viewWillAppear(animated)
    
    tableView.reloadData()
    saveToArchive()
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
    
    let cell = tableView.dequeueReusableCellWithIdentifier("RosterCell", forIndexPath: indexPath) as! PersonTableViewCell
    
    let person = people[indexPath.row]
    
    cell.firstNameLabel.text = person.firstName
    cell.lastNameLabel.text = person.lastName
    cell.personImage.image = person.image
    
    return cell
  }
  
  func saveToArchive() {
    let documentsPath = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true)[0] as String
    NSKeyedArchiver.archiveRootObject(self.people, toFile: documentsPath + "/archive")
  }
  
  func loadFromArchive() {
    let documentsPath = NSSearchPathForDirectoriesInDomains(.DocumentDirectory,NSSearchPathDomainMask.UserDomainMask, true) [0] as String
    if let peopleFromArchive = NSKeyedUnarchiver.unarchiveObjectWithFile(documentsPath + "/archive") as? [Person] {
      self.people = peopleFromArchive
    }
  }
  
//  func saveToArchive() {
//    if let documentPath = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true).last {
//  
//      NSKeyedArchiver.archiveRootObject(people, toFile: documentPath + "/archive")
//    }
//  }
//  
//  func loadFromArchive() -> [Person]? {
//    if let documentPath = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true).last {
//      
//      if let people = NSKeyedUnarchiver.unarchiveObjectWithFile(documentPath + "/archive") as? [Person] {
//        return people
//      }
//    }
//    return nil
//  }

}
