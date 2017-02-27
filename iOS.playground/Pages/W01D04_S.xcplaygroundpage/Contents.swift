 
 import Foundation
 
 /*:
  ## 1. Function
  */
 /*:
  ### Defining and Calling Function
  */
 func greet(person:String) -> String {
  let greeting = "Hello, " + person + "!"
  return greeting
 }
 print(greet(person: "BroadWay"))
 
 /*:
  ### Function Parameters and Return Values
  */
 func greetAgain(person:String) -> String {
  return "Hello again, " + person + "!"
 }
 
 /*:
  ### Function without Parameters
  */
 
 /*:
  ### Function with Multiple Parameters
  */
 func greet(person:String, alreadyGreeted:Bool) -> String {
  if alreadyGreeted {
    return greetAgain(person: "Broad")
  }else {
    return greet(person: "Way")
  }
 }
 print(greet(person: "Tim", alreadyGreeted: true))
 
 /*:
  ### Function with Multiple Return Values
  */
 func minMax(array:[Int]) -> (min:Int, max:Int) {
  var currentMin = array[0]
  var currentMax = array[0]
  
  for value in array[1..<array.count] {
    if value < currentMin {
      currentMin = value
    }else if value > currentMax {
      currentMax = value
    }
  }
  
  return(currentMin, currentMax)
 }
 let bounds = minMax(array: [8, -3, 102, 4, 71])
 print("min is \(bounds.min) and max is \(bounds.max)")
 
 /*:
  ### Function Argument Label and Parameters Name
  */
 func someFunction (argumentLabel parameterName:Int) { }
 someFunction(argumentLabel: 1)
 
 /*:
  ### Omitting Argument Labels
  */
 func someFunction1(_ firstParameterName:Int, secondParameterName:Int) { }
 someFunction1(1, secondParameterName: 2)
 
 func diffrence(from minuend:Int, to subtrahend:Int){
  let differnce = minuend - subtrahend
  print(differnce)
 }

 // minuend - subtrahend = difference
 
 /*:
  ### Default Parameter Values
  */
 func someFunction2(_ firstParameterName:Int = 12) { }
 
 /*:
  ### Variadic Parameter
  */
 func arithmeticMean (_ numbers: Double..., anotherParams:String) -> Double {
  //var anotherParams = anotherParams
  var total:Double = 0
  for number in numbers {
    total += number
  }
  //anotherParams = ""
  
  return total/Double(numbers.count)
 }
 
 /*:
  ### In-Out Parameter
  */
 // In you want a function to modify a parameter's value, and you wabt those changes to persist after the function call has ended, define that parameters as an in-out parametes instead.
 // In-out parameters connot have default values, and variadic parametes cannot be marked as inout.
 
 func swapTwoInts (_ a:inout Int, _ b:inout Int){
  let temporaryA = a
  a = b
  b = temporaryA
 }
 
 var someInt = 1
 var anotherInt = 107
 
 swapTwoInts(&someInt, &anotherInt)
 
 print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")
 
 /*:
  ### Function Type
  */
 func addTwoInts(_ a:Int, _ b:Int) -> Int {
  return a + b
 }
 
 func multiplyTwoInts(_ a: Int, _ b:Int) -> Int {
  return a*b
 }
 // A function type that has two parameters, both of type Int, and that returns a value of type Int.
 
 func printHelloWorld() {
  print("hello, world")
 }
 // a function that has no parameters, and returns void.
 
 /*:
  ### Function Types as Parameter Types
  */
 func printMathResult(_ mathFunction:(Int, Int) -> Int,_ a: Int, _ b:Int) {
  print("Result: \(mathFunction(a, b))")
 }
 
 printMathResult(addTwoInts, 2, 4)
 
 /*:
  ### Function Types as Return Types
  */
 /*:
  ### Nested Function
  */
 func chooseStepFunctions(backward:Bool) -> (Int) -> Int {
  
  func stepForward(input: Int) -> Int {
    return input + 1
  }
  
  func stepBackWard (input : Int) -> Int {
    return input - 1
  }
  
  return backward ? stepBackWard : stepForward
 }
 
 /*:
  ## 2. Closure
  */
 // Closures are self-contained blocks of functionality that can be passed around and used in your code. Closures can capture and store refereces to any constants and variables from the context in which they are defined.
 /*:
  ### Closure Expression Syntax
  */
 
 var noParametsOrReturn:() -> () = {
  print("noParametsOrReturns")
 }
 noParametsOrReturn()
 
 var noParameterAndOneReturn:() -> String = {
  return "noParameterAndOneReturn"
 }
 noParameterAndOneReturn()
 
 var noParameterAndMultipleReturns:() -> (String, String) = {
  return ("First", "Second")
 }
 noParameterAndMultipleReturns()
 
 var oneParameterAndReturn:(_ str: String) -> (String)  =  { value in
  return value
 }
 oneParameterAndReturn("Hello")
 
 var multipleParameterAndReturn:(String, String)  -> String = { str1, str2 in
  return str1 + str2
 }
 multipleParameterAndReturn("FirstName", "LastName")
 
 /*:
  ## 3. Demo
  ### UIScrollView / UISlider
  */
