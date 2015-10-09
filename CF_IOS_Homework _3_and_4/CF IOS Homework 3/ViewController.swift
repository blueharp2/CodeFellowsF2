//
//  ViewController.swift
//  CF IOS Homework 3
//
//  Created by Lindsey on 9/24/15.
//  Copyright © 2015 Lindsey Boggio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

var labelNameArray = [0,1,2,3,4,5]
var labelArrayIndex = 0
var labelNameArray2 = [100,101,102,103,104,105]
var labelArray2Index = 0
  
  
@IBOutlet weak var myFirstLabel: UILabel!
@IBOutlet weak var mySecondLabel: UILabel!
  


 @IBAction func myFirstButton(sender: UIButton) {
  if labelArrayIndex + 1 < labelNameArray.count {
    labelArrayIndex++
    }
    else {
      labelArrayIndex = 0
    }
    myFirstLabel.text = "\(labelNameArray[labelArrayIndex])"
  }

  
  @IBAction func mySecondButton(sender: UIButton) {
    if labelArray2Index + 1 < labelNameArray2.count {
      labelArray2Index++
    }
    else {
      labelArray2Index = 0
    }
    mySecondLabel.text = "\(labelNameArray2[labelArray2Index])"
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    myFirstLabel.text = "\(labelNameArray[0])"
    mySecondLabel.text = "\(labelNameArray2[0])"
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
}

