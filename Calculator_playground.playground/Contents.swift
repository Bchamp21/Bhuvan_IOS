import UIKit

var greeting = "Hello, playground"

    let stringExp = "3+5/2*6"
s
    let expression = NSExpression(format: stringExp)

    let result = expression.expressionValue(with: nil, context: nil) as! Double
    print(result)


var str = "Hello World"
str.removeLast()
print(str)
str.removeFirst()
print(str)




