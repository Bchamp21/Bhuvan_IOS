import UIKit

var greeting = "Hello, playground"

    let stringExp = "3+5/2*6"

    let expression = NSExpression(format: stringExp)

    let result = expression.expressionValue(with: nil, context: nil) as! Double
    print(result)


var str = "Hello World"
str.removeLast()
print(str)
str.removeFirst()
print(str)




var message : String?
message = "Hello World!"
print(message)


//if message != nil{
//    let messageBody = message!   // ! - implicitly unwrapped option
//    print(messageBody)
//}

if let messageBody = message {
    print(messageBody)
}else{
    print("No message.")
}


//message = "24"
//if let messageBody = message{
//    if let messageInteger = Int(messageBody){
//        print("\(messageBody): \(messageInteger)")
//    }
//}else{
//    print("No message")
//}
//
//
//message = "aabcd"
//if let messageBody = message, let messageInteger = Int(messageBody){
//        print("\(messageBody): \(messageInteger)")
//}else{
//    print("No message")
//}



var message_new: String!
//message_new = "Hello, World!"
print(message_new)

if let messageBody = message_new {
    print(messageBody)
}else{
    print("No message.")
}



var message_new1: String! = nil
let anotherMessage : String! = message_new1
let yetAnotherMessage = message_new1
print(yetAnotherMessage)


var errorCodeString : String?
errorCodeString = "404"
var errorDescription : String?
if let theError = errorCodeString, let errorCodeInteger = Int(theError)
//   ,errorCodeInteger == 404
{
    errorDescription = "\(errorCodeInteger + 200): resource was not found"
}


var upCaseErrorDescription = errorDescription?.append("Please try later".uppercased())
print(upCaseErrorDescription ?? "No error.")



