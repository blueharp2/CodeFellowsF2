//
//  PersonDetailViewController.swift
//  CF_IOS_Homework_5_to_8
//
//  Created by Lindsey on 10/5/15.
//  Copyright © 2015 Lindsey Boggio. All rights reserved.
//

import UIKit

class PersonDetailViewController: UIViewController, UITextFieldDelegate {


  @IBOutlet weak var firstNameTextField: UITextField!
  @IBOutlet weak var lastNameTextField: UITextField!
  @IBOutlet weak var imageView: UIImageView!
 
  var selectedPerson : Person!

  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    firstNameTextField.delegate = self
    lastNameTextField.delegate = self
    
  
    firstNameTextField.text = selectedPerson.firstName
    lastNameTextField.text = selectedPerson.lastName
    imageView.image = selectedPerson.image
    
    
    //let lindseyImage = UIImage(named: "Lindsey.jpeg")
    //imageView.image = lindseyImage
  }
  
  
  func textFieldShouldReturn(textField: UITextField) -> Bool {
    if let firstNameText = firstNameTextField.text {
      selectedPerson.firstName = firstNameText
    }
    if let lastNameText = lastNameTextField.text {
      selectedPerson.lastName = lastNameText
    }
    textField.resignFirstResponder()
    return true
  }
}
