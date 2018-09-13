//: Playground - noun: a place where people can play

import UIKit


///Singleline documentation

/**
 Multiline block
 */

//---------------------------------------------------

// **text** - It turns the text between the asterisks in bold.
// *text* - It turns the text between the asterisks in italics.

/// This is an **awesome** documentation line for a really *useful* variable.
var someVar = "This is a variable"

//---------------------------------------------------

// #text# - It makes the text a header, equal to the <H1> in HTML. Two # characters will result in <H2> header, and so on until the <H6> header. The ending # character(s) is (are) optional.

/**
 It prints "Hello, World".
 
 ## Important Notes ##
 1. It prints *"Hello, World"* several times
 2. For **Swift 4.2** you may use Int.random() for generating random number
 */
func printHelloWorld() {
    let randomNumber = arc4random_uniform(10)
    (0...randomNumber).forEach { _ in print("Hello, World!") }
}

//---------------------------------------------------

// ```` code ```` - It creates a code block as part of the documentation

/**
 It doubles the value given as a parameter.
 ### Usage Example: ###
 ````
 let single = 5
 let double = doubleValue(single)
 print(double)
 ````
 */
func doubleValue(value: Int) -> Int {
    return value * 2
}

//---------------------------------------------------

// Documentation to an enum

/**
 My own alignment options.
 ````
 case Left
 case Center
 case Right
 ````
 */
enum AlignmentOptions {
    /// It aligns the text on the Left side.
    case left
    
    /// It aligns the text on the Center.
    case center
    
    /// It aligns the text on the Right side.
    case right
}

func doSomething() {
    _ = AlignmentOptions.left
}

//---------------------------------------------------

// "Parameter" and "returns"

/**
 This is an extremely complicated method that concatenates the first and last name and produces the full name.
 
 - Parameter firstname: The first part of the full name.
 - Parameter lastname: The last part of the fullname.
 - Returns: The full name as a string value.
 */
func createFullName(firstname: String, lastname: String) -> String {
    return "\(firstname) \(lastname)"
}

//---------------------------------------------------

// "Note" and "Todo"

/**
 Another complicated function.
 
 - Parameter fullname: The fullname that will be broken into its parts.
 - Returns: A *tuple* with the first and last name.
 - Note:
 [The Swift Standard Library Reference](https://developer.apple.com/library/prerelease/ios//documentation/General/Reference/SwiftStandardLibraryReference/index.html)
 - Todo: Support middle name in the next version.
 */
func breakFullName1(fullname: String) -> (firstname: String, lastname: String) {
    let fullnameInPieces = fullname.components(separatedBy: " ")
    return (fullnameInPieces[0], fullnameInPieces[1])
}


//---------------------------------------------------
/**
 Another complicated function.
 
 - Parameter fullname: The fullname that will be broken into its parts.
 - Returns: A *tuple* with the first and last name.
 
 - Remark:
 There's a counterpart function that concatenates the first and last name into a full name.
 
 - Precondition: `fullname` should not be nil.
 - Requires: Both first and last name should be parts of the full name, separated with a *space character*.
 
 - Todo: Support middle name in the next version.
 
 - Warning: A wonderful **crash** will be the result of a `nil` argument.
 
 - Version: 1.1
 
 - Author: Myself Only
 
 - Note: Too much documentation for such a small function.
 */
func breakFullName(fullname: String) -> (firstname: String, lastname: String) {
    let fullnameInPieces = fullname.components(separatedBy: " ")
    return (fullnameInPieces[0], fullnameInPieces[1])
}





//--------------------------------------------------------

// Generating documentation

// Jazzy is a tool that can produce an Apple-style documentation for your code written either in Swift or in Objective-C. Actually, Jazzy creates a stand-alone website that contains the documentation you’ve written in it.
// Example: https://realm.io/docs/swift/latest/api/Classes/ClassPermission.html
// For more information: https://github.com/realm/jazzy
