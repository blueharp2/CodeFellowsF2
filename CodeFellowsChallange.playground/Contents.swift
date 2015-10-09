//: Playground - noun: a place where people can play

import Foundation

func input (string: String)-> String {
  let stdInput = NSFileHandle.fileHandleWithStandardInput()
  let inputData = stdInput.availableData
  let strData = NSString(data: inputData, encoding: NSUTF8StringEncoding)!
  
  return strData.stringByTrimmingCharactersInSet(NSCharacterSet.newlineCharacterSet())
}

var someString = input("124")//the input is messing up this line
print(someString)



//Example of converting a string into and Int from the e-book Page 77
//let possibleNumber = "123"
//let convertedNumber = possibleNumber.toInt()   Creates an error says to use an Int initializer


var someString2 = "124"
let a:Int? = Int(someString2)
//This works!!!!



let number = "123456"
if let convertedNumber = Int(number) {
  print(convertedNumber)
  let array = Array(arrayLiteral: convertedNumber)
  print(array)
  
}












//let number = "123456"

//let array = Array(number).map{String($0).toInt() ?? 0}  // [1, 2, 3, 4, 5, 6]

//extension Int {
//  var array: [Int] {
//    return Array(arrayLiteral: description).map{String($0).toInt() ?? 0}
//  }
//}
//
//let myInt = 12345
//
//let myIntArray = myInt.array   // [1, 2, 3, 4, 5]
//



//Input sting
//Change string to intiger
//Break intiger down by each digit
//if statement
//Evaluate first digit to the intiger.  If divisible, return 1 if not return 0
//else statement
//Evaluate next digit to the intiger.  If divisible, return 1 if not return 0
//repeat until you have reached the end of the intiger's digits  -Perhaps use string.length and increment through it?
//add the sum of the returns and print answer as a string
