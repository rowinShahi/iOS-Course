import UIKit
/*:
 ## 1. Variables & Constants
 ### Declaring Constants and Variables
 */
let maxNumber = 10.43
// maxNumber = 10 // constant can't mutable

let string = "my String"

var updateNuber = 10
updateNuber = 20

/*:
 ### Type Annotations
 */
var nextString:String = "nextStringValue"
let isCold:Bool = true
/*:
 ### Naming Constants and Variables
 */
//Constant and variable names can contain almost any character, including Unicode characters.
//CamelCase not snake Case
let 😀 = "smile"

/*:
 ### Printing Constants and Variables
 */
print(nextString)
print("This is String \(nextString)")
/*:
 ### Type Safety and Type Inference
 */
//nextString = 10
/*:
 ## 2. Types
 */

/*:
 ### Number
 */
let a:Int = 10
let b:Float = 10.4
let c:Double = 10.38838
/*:
 ### Integer and Floating-Point Conversion
 */
let intNumber = Int(b)
/*:
 ### Bool
 */
let itTrue = true
/*:
 ### Type Aliases
 */
// Type aliases define an alternative name for an existing type
typealias Feet = UInt
let roomLength: Feet = 10
/*:
 ## 3. String & Characters
 */
/*:
 ### String Literal
 */
let myString: String = "String Value"
/*:
 ### String Function
 */
myString.lowercased()
myString.uppercased()
/*:
 ### Initializing an Empty String
 */
var emptyString = String()
/*:
 ### String Mutability
 */
print(emptyString)
emptyString = "StringingUpdated"
print(emptyString)
/*:
 ### Working with Character
 */

/*:
 ### Concatenating Strings and Characters
 */
let characterLetter:Character = "S"
let hello = "Hello"
let symbol:Character = "!"
/*:
 ### String Interpolation
 */
let greeting = hello + String(symbol)

let updatedSymbol = String(symbol)
/*:
 ### Comparing Strings
 */
if greeting == "Hello" {
  // Matched
}else{
  // Not matched
}
/*:
 ## 4. Control Flow
 */
/*:
 ### if, else and else if Statement
 */
var num = 10

if num == 0 {
  print("Zero Value")
}else if num > 0 {
  print("Positive Value")
}else {
  print("Native Value")
}



/*:
 ### Switch
 */
switch num {
case 0:
  print("Zero Value")
default:
  print("Non Zero Value")
}





/*:
 ### FOR Loop / FOR-IN Loop
 */
for _ in 0..<10 {
 // print(index)
}


let lists = ["One", "Two", "Three"]

//for (key , value) in lists {
//  print(list)
//}

/*:
 ### While Loop
 */
num = 0
while num < 10{
  print(num)
  num += 1
}
/*:
 ### Repeat While Loop
 */

num = 0
repeat {
  print(num)
  num += 1
}while num < 10

/*:
 ### Continue
 */
for index in 0...10 {
  if index == 3 {
    continue
  }
  
  print(index)
}



/*:
 ### Break
 */
for index in 0...10 {
  if index == 3 {
    break
  }
  
  print(index)
}
/*:
 ### Fallthrough
 */
num = 0
switch num {
case 0:
  print("Zero Value")
  fallthrough
case 1:
  print("One Value")
default:
  print("Non Zero Value")
}
/*:
 ## 5. Demo
 */
/*:
 ### UITexField
 */
/*:
 ### UITextView
 */
