//
//  PersonDetailViewController.swift
//  CF_IOS_Homework_5_to_8
//
//  Created by Lindsey on 10/5/15.
//  Copyright © 2015 Lindsey Boggio. All rights reserved.
//

import UIKit

class PersonDetailViewController: UIViewController {
  var selectedName = "None"
  
  @IBOutlet weak var nameLabel1: UILabel!
  
  @IBOutlet weak var nameLabel2: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
  nameLabel1.text = selectedName
  nameLabel2.text = "??"
  }

}
