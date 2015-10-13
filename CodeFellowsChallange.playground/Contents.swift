//: Playground - noun: a place where people can play

//import Foundation
//
//func input (string: String)-> String {
//  let stdInput = NSFileHandle.fileHandleWithStandardInput()
//  let inputData = stdInput.availableData
//  let strData = NSString(data: inputData, encoding: NSUTF8StringEncoding)!
//  
//  return strData.stringByTrimmingCharactersInSet(NSCharacterSet.newlineCharacterSet())
//}

//var someString = input()
//print(someString)






var componentIntegers = [Int]()
let number = "123456"
for character in number.characters {
  let characterString = String(character)
  let  componentInteger = Int(characterString)
  componentIntegers.append(componentInteger!)
}

componentIntegers
let convertedNumber:Int? = Int(number)
convertedNumber

//the lines below are just tests to see what should be going on at each point in the array
//convertedNumber! % componentIntegers[0]
//convertedNumber! % componentIntegers[1]
//convertedNumber! % componentIntegers[2]
//convertedNumber! % componentIntegers[3]
//convertedNumber! % componentIntegers[4]
//convertedNumber! % componentIntegers[5]

var answer: [Int] = []

for var i = 0; i < componentIntegers.count;++i{
  if convertedNumber! % componentIntegers[0] == 0 {
    print(1)
  } else {
     print (0)
  }//I am fairly sure this for loop is not working correctly.  The if statement is working.
  answer.append(i)//This step is not right.  I want to send the response of the if statement to the answer array. However it just prints the index numbers.  It also messes up the for in statement further down.
}
answer

for items in answer {
  print(items)
}


for character in componentIntegers {
  if (convertedNumber)! % componentIntegers[0] == 0{
    print(1)
  } else {
    print(0)
  }
}// I also tried to use a for in loop to solve the problem as well but the loop doesn't work.  The if statement does work.

//If I was able to get one of the for loops to work, then I would total the items in the array that were equal to 1.  The last step would be to convert the total into a string and print it.










//func returnValue() {
//  if convertedNumber % componetIntegers[0] = 0 {
//  return 1
//} else {
//  return 0
//}
//

//if convertedNumber % componentIntegers[2] {

//}










//var someString2 = "124"
//let a:Int? = Int(someString2)
//This works!!!!


//var character = number
//if let convertedNumber = Int(number) {
//  print(convertedNumber)
//  let array = Array(arrayLiteral: convertedNumber)
//  print(array)
//  
//}


//break the string into an array before you transfer it to an Int
//string characters string

//.componen
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

//Example of converting a string into and Int from the e-book Page 77
//let possibleNumber = "123"
//let convertedNumber = possibleNumber.toInt()   Creates an error says to use an Int initializer



//Input sting
//Change string to intiger
//Break intiger down by each digit
//if statement
//Evaluate first digit to the intiger.  If divisible, return 1 if not return 0
//else statement
//Evaluate next digit to the intiger.  If divisible, return 1 if not return 0
//repeat until you have reached the end of the intiger's digits  -Perhaps use string.length and increment through it?
//add the sum of the returns and print answer as a string
