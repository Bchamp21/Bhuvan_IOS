import UIKit

var greeting = "Hello, playground"

func greetUser(){
    print("Welcome User")
}
greetUser()



func sayHello()->String{
    let name="Swift"
    return "Hello "+name+"!"
}
print(sayHello())


func favoriteProgram(name:String)->String {
    let name="My favorite programming language is \(name)"
    return name
}
print(favoriteProgram(name:"Java"))

func addNumbers(number1:Int,number2:Int)->Int{
return number1+number2
}
print("The sum of given numbers is (addNumbers(number1:10, number2: 20))")
print("The sum of given numbers is \(addNumbers(number1:10, number2: 20))")
addNumbers(number1:10, number2: 20)

func manipulateNumber(input: Int,mode:Bool)->String{
    var counter=input
    if(mode){
        counter+=2
    }else{
        counter-=1
    }
    return "The \(mode ? "incremented" : "decremented" ) value is \(counter)"
}
var val=19
print(manipulateNumber(input:val,mode: false))

func login(sid username:String, password:String)->Bool{
    if(username=="swift5.5" && password=="uikit") {
        return true
    }
    return false;
}
var loggedIn:Bool = login(sid: "swift5.5", password:
"uiki")
if loggedIn {
    print("User login success")
}else{
    print("Username or Password is incorrect")
}
