import UIKit

var greeting = "Hello, playground"

    let stringExp = "3+5/2*6"

    let expression = NSExpression(format: stringExp)

    let result = expression.expressionValue(with: nil, context: nil) as! Double
    print(result)


