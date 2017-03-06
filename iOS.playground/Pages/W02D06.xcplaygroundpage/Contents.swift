import Foundation
import UIKit

/*******************************************/
//                Enumeration              //
/*******************************************/
// An enumeration defines a common type for a group of related values and enable you to work with those values in a type-safe way within your code.
// Syntax
enum enumName {
  // case
}

// Inline definition
enum Direction {
  case south, north, west, east
  // Rest of Code
}

// Multiple Line Definition
enum CompassDirection {
  case south
  case north
  case west
  case east
}

var direction = Direction.south

// Enumeration with Switch Statement

switch direction {
case .south:
  print("South")
default:
  print("Unknown")
}

// Enum with Associated Values
// Different Datatypes, varies when declared each time
// function
enum Student {
  case name(String)
  case mark(Int, Int, Int)
  
  func average() -> Double {
    switch self {
    case .mark(let mark1, let mark2, let mark3):
      return Double((mark1 + mark2 + mark3)/3)
    default:
      return 0
    }
  }
}

var studDetails = Student.name("Student1")
var studMark = Student.mark(10, 20, 30)

switch studMark {
case .name(let studName):
  print("Student name is \(studName)")
case .mark(let mark1, let mark2, let mark3):
  print("Student marks are: \(mark1), \(mark2), \(mark3)")
}

// Enum with Raw Values
// Raw values can be String, characters, or any of the integer or floating point number types.
// must be unique within its enumeration declaration

enum Apps:Float {
  case native = 1, web = 2, hybrid = 3
}

let value = Apps.native.rawValue

/*******************************************/
//                Class                    //
/*******************************************/
// Classes are general-purpose, flexible constructs that become the building blocks of your program's code. You define properties and methods to add functionality to your classes by using exactly the sam

// Definition Syntax
// Default Property Values

class Message {
  // Properties
  let sender:String
  let recipient:String
  let timeStamp:Date
  var status = "Sent"
  
  // Initializers
  init(sender:String, recipient:String) {
    self.sender = sender
    self.recipient = recipient
    timeStamp = Date()
  }
  
  convenience init(sender:String) {
    self.init(sender:sender, recipient:sender)
  }
  
  // Methods
  func showMessageTime () -> String {
    return "\(self.timeStamp)"
  }
}


// Subclassing or Inheritance and Overriding Methods
class TextMessage:Message {
  
  // Properties
  let content:String
  
  // Initializers
  init(content:String, sender:String, recipient:String) {
    self.content = content
    super.init(sender: sender, recipient: recipient)
  }
}

class ImageMesssage:Message {
  // Properties
  let content:UIImage
  
  // Initializers
  init(content:UIImage, sender:String, recipient:String) {
    self.content = content
    super.init(sender: sender, recipient: sender)
  }
  
  // Methods
  override func showMessageTime() -> String {
    return("\(timeStamp)")
  }
}

/*
 Rules for Designated and Conveniecnce Initializers
 1. A designated initializer must call a designated initializer from its immediate superclass.
 2. A convenience initializer must call another initializer from the same class
 3. A convenience initializer must ultimately call a designated initializer.
 */

class NoteMessage:Message {
  let content: String
  
  init(content:String, sender:String, recipient:String) {
    self.content = content
    // Rule 1. Calling desgnated Intializer from immediate superclass
    super.init(sender: sender, recipient: sender)
  }
  
  convenience init(content:String, sender:String){
    // Rule 2 and 3: Calling the Designated Initializer in same class
    self.init(content:content, sender:sender, recipient:sender)
  }
  
  convenience init(content:String) {
    // Rule 2. Calling another initializer in same class
    self.init(content:content, sender:"self")
  }
  
  convenience init() {
    // Rule 3. Calling another initializer in same class
    self.init(content:"")
  }
}


/*******************************************/
//                Structure                //
/*******************************************/

// Initializers for Structs
struct XYPoint {
  // Properties
  var x:Int
  var y:Int
  
  // Initializer
  init(x:Int, y:Int) {
    self.x = x
    self.y = y
  }
  
  // Initializer to make a point on the Y-Axis
  init(y inputY:Int) {
    self.init(x:0, y:inputY)
  }
  
  // Initializer to make a point on the X-Axis
  init(x inputX: Int) {
    self.init(x:inputX, y:0)
  }
}

let yAxis = XYPoint(y: 10)

// Mutation Methods in Structures
struct RemoteInforamtion {
  
  var stringData = ""
  
  mutating func updateData(){
    self.stringData = "updated"
  }
}

// Classes and Structures in Swift have many things in common
/*
 1. Define properties to store values
 2. Define methods to provide functionality
 3. Define subscripts to provide access to their values using subscript
 4. Define initializers to set up their initial state
 5. Be extended to expand their functionality beyound a default implementation
 6. Conform to protocols to provide standard functionality of a certain kind
 */

// Mojor differences between Classes and Structs
/*
 1. Structures cannot inherit from other types
 2. Structures are Value Type and Classes are reference types
 */

/*******************************************/
//                Demo                     //
/*******************************************/
/*
 1. Login Page Review
 2. Open page in Safari from Native app // UIApplication.shared.open(URL(string: "")!)
 3. UIWebView
 4. UISafariViewController
 */
