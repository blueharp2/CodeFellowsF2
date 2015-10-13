//
//  Person.swift
//  CF_IOS_Homework_5_to_8
//
//  Created by Lindsey on 10/4/15.
//  Copyright © 2015 Lindsey Boggio. All rights reserved.
//

import UIKit

class Person : NSObject, NSCoding {
  var firstName : String
  var lastName : String
  var image : UIImage?

  
  init (fname : String, lname : String, photo : UIImage?) {
    firstName = fname
    lastName = lname
    image = photo
  }
  
  
  required init?(coder aDecoder: NSCoder) {
    if let firstName = aDecoder.decodeObjectForKey("firstName") as? String {
      self.firstName = firstName
    } else {
      self.firstName = "NA"
    }
    if let lastName = aDecoder.decodeObjectForKey("lastName") as? String {
      self.lastName = lastName
    }else {
      self.lastName = "NA"
    }
    if let data = aDecoder.decodeObjectForKey("image") as? NSData {
       self.image = UIImage(data: data)
    }
  }
  
  func encodeWithCoder(aCoder: NSCoder) {
    aCoder.encodeObject(firstName, forKey: "firstName")
    aCoder.encodeObject(lastName, forKey: "lastName")
    if let image = image {
      if let data = UIImageJPEGRepresentation(image, 0.0){
        aCoder.encodeObject(data, forKey: "image")
      }
    }
  }
}