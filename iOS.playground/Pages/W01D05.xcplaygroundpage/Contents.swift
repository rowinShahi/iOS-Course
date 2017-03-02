 
 import Foundation
 /*:
  ## 2. Closure
  */
 // Closures are self-contained blocks of functionality that can be passed around and used in your code. Closures can capture and store refereces to any constants and variables from the context in which they are defined.
 /*:
  ### Closure Expression Syntax
  */
 
 func greet() {
  print("Hello")
 }
 
 // noParameterOrReturn
 
 var noParameterOrReturn: () -> () = {
  print("noParameterOrReturn")
 }
 
 noParameterOrReturn()
 
 
 var updatedString_I = {
  
  // Other Codes
  print("noParameterOrReturn")
 }
 
 // noParameterAndOneReturn
 var noParameterAndOneReturn: () -> (String) = {
  return "returnValue"
 }
 
 var noParameterAndOneReturn_I = {
  // Other Codes
  return "noParameterAndOneReturn"
 }
 
 let result = noParameterAndOneReturn()
 print(result)
 
 // noParameterAndMultipleReturns
 var noParameterAndMultipleReturns: () -> (Int, String) = {
  return (400, "Internet Error")
 }
 
 var noParameterAndMultipleReturns_I = {
  return (400, "Internet Error")
 }
 
 print("\(noParameterAndMultipleReturns)")
 
 // oneParameterAndReturn
 
 var oneParameterAndReturn: (String) -> (String) = { (value: String) -> (String) in
  // processing part...
  let updatedString = value + "Updated"
  return updatedString
 }
 
 var oneParameterAndReturn_I = {  (value: String) -> (String) in
  let updatedString = value + "Updated"
  return updatedString
 }
 
 var oneParameterAndReturn_II: (String) -> (String) = {
  value in
  return value + "UPdated"
 }
 
 oneParameterAndReturn("Initial")
 
 // multipleParameterAndReturn
 
 var multipleParameterAndReturn: (String , String) -> (String) = { (str1:String, str2: String) -> (String) in
  let finalResult = str1 + str2 + "UPdated"
  return finalResult
 }
 
 var multipleParamterAndReturn_I = { (str1:String, str2: String) -> (String) in
  let finalResult = str1 + str2 + "UPdated"
  return finalResult
 }
 
 var multipleParamterAndReturn_II:(String , String) -> (String)  = { str1, str2 in
  let finalResult = str1 + str2 + "UPdated"
  return finalResult
 }
 
 
 multipleParameterAndReturn("firstParam", "SeconParams")
 
 // Tuples
 
 let webResponse:(code:Int, message:String) = (400, "Internet Unavailable")
 
 webResponse.0
 webResponse.1
 
 webResponse.code
 webResponse.message
 
 
 
 
 
 
 
 
 
 
 
 
