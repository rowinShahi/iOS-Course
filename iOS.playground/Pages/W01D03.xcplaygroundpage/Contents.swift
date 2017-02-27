import Foundation

/*:
 ## 1. Optional Types *value Absent(nil) and value Present*
 */
var optionalValue: String? = nil
optionalValue = "Value available"
//optionalValue = nil

// nil
/*:
 ### If Statements and Forced Unwrapping
 */
if optionalValue != nil {
  print ("\(optionalValue!)")
}
/*:
 ### Optional Binding / Unimplicit Unwrapping
 */
if let value = optionalValue {
  print("Value exist \(value)")
}

var firstName:String!
var middleName:String?
var lastName:String!

var finalName:String!

firstName = "First Name"
lastName = "Last Name"

if let mName = middleName {
  finalName = firstName + " " +  mName + " " + lastName
}else{
  finalName = firstName + " " + lastName
}

print(finalName)

/*:
 ## 2. Collections
 */
/*:
 ### Creating an Empty Array
 */
let emptyArray = [String]()
/*:
 ### Creating an Array with Default Value
 */
let array:[String] = ["defaultValue", "defaultValue"]
/*:
 ### Creating an Array by adding Two Arrays Together
 */
let arrayOne = Array(repeatElement(1.0, count: 2))
let arrayTwo = Array(repeatElement(2.0, count: 2))

let finalArrray = arrayOne + arrayTwo
/*:
 ### Creating an Array with an Array Literal
 */
var array1:[String] = ["OneValue", "twoValue"]
/*:
 ### Accessing and Modifying an Array
 */
let fistItem = array1[0]
let listCount = array1.count

array1.insert("threeValue", at: 2)
array1.append("fourthVlaue")

array1

for _ in array1 {
  //print("loop")
}

/*:
 ### Iterating over an Array
 */
for _ in array1 {
 // print("loop")
}

for (index, value) in array1.enumerated() {
   print("Value \(value) at Indes:\(index)")
}
/*:
 ### Creating and Initializing an Empty Set
 */
//let emptySet:<String>!



/*:
 ### Creating an Set with an Array Literal
 */
var setItems:Set<String> = []

/*:
 ### Accessing and Modifying a Set
 */

setItems.insert("Value")
let item = setItems.contains("Value")


/*:
 ### Iterating over a Set
 */

/*:
 ### Performing Set Operations // Union, intersection, subtracting, symmetricDifference
*/
let oddDigits:Set<Int> = [1, 3, 5 , 9]
let evenDigits: Set<Int> = [2, 4, 6, 8]
let randomdigits: Set<Int> = [0, 5 , 8]

oddDigits.union(randomdigits)
oddDigits.intersection(randomdigits)
let result = oddDigits.subtracting(randomdigits)
oddDigits.symmetricDifference(randomdigits)
/*:
 ### Dictionary
 */
/*:
 ### Creating an Empty Dictionary
 */
//let emptyDictionary:[String:String]  =  [:]
/*:
 ### Creating a Dictionary with Dictionary Literal
 */
var emptyDictionary:[String:String]  =  ["abc":"ABC", "xyz":"XYZ"]
/*:
 ### Accessing and Modifying a Dictionary
 */
let valueOfabc = emptyDictionary["dfdf"]

emptyDictionary["mno"] = "MNO"

emptyDictionary
/*:
 ### Iterationg over a Dictionary
 */
for (_, value) in emptyDictionary {
  print("Key:  , Value \(value)")
}


let keys = Array(emptyDictionary.keys)
let values = Array(emptyDictionary.values)
let arrayInt:[Any] = [1, "ArrayItem", 4, 5]

for item in arrayInt {
}
/*:
 ## 3. Demo
 ### UIButton / UISegmentController / UISwitch / UIStepper
 */
