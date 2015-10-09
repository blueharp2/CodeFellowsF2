//
//  Person.swift
//  CF IOS Homework 3
//
//  Created by Lindsey on 9/26/15.
//  Copyright © 2015 Lindsey Boggio. All rights reserved.
//

import UIKit

class Person: UIViewController, UITableViewDataSource {
  
  var firstNames = ["Lindsey", "Brad", "Jake"]
  var lastNames = ["Boggio", "Johnson", "Hawken"]
  var firstNameArrayCounter = 0
  
  @IBOutlet weak var tableView: UITableView!
  override func viewDidLoad() {
    super.viewDidLoad()
  tableView.dataSource = self
}

  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
    return firstNames.count
}

func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

  let cell = tableView.dequeueReusableCellWithIdentifier("RosterCell", forIndexPath: indexPath)
  
  let name1 = firstNames[indexPath.row]
  let name2 = lastNames[indexPath.row]
 
  cell.textLabel?.text = "\(name1) \( name2)"

  return cell
 }
}



