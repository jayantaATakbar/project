//: Playground - noun: a place where people can play

import UIKit

/*
class Simple {
    
    init(){
        print("init method called in base class")
    }
    
    class func one(){
        print("class - One()")
    }
    
    class func two(){
        print("class - Two()")
    }
    
    static func staticOne(){
        print("Static One()")
    }
 
    final func finalOne(){
        print("Final One()")
    }
    
    static var myStaticVar = "Static Var in Base"
    
    // Wrong Decleration
    // class var myClassVar1 = "class var1"
    
    class var myClassVar: String {
        return "Class varv in sub class"
    }
    
}

class SubSimple: Simple {
    
    override class func one(){
       
        print("Class Onw in Subclass")
    }
    
    override class func two(){
        print("class Two in subclass")
    }
    
    // can not be override
 
//    override static func staticOne(){
//
//    }
//    override final func finalOne(){
//
//     }
 
    
    override class var myClassVar: String {
        
        return "Class Var in Subclass"
    }
    
}

print(Simple.one())
print(Simple.two())
print(Simple.staticOne())
//print(Simple.finalOne(Simple()))
print(SubSimple.staticOne())
print(Simple.myStaticVar)
print(Simple.myClassVar)
print(SubSimple.myClassVar)
*/




//generic

var oldFare = 4500
var newFare = 2200

func swapTwoInts(_ a: inout Int,_ b: inout Int ){
    
        let tempOldfare = a
    
        a = b
        b = tempOldfare
 }

 swap(&oldFare, &newFare)

print("Old Fare is :\(oldFare) New Fare is: \(newFare)")

func checkFareHike<T>(_ oldFare: inout T, _ newFare: inout T){
    
    let tempFare = oldFare
    oldFare = newFare
    newFare = tempFare
}

checkFareHike(&newFare, &oldFare)
print("OLD: \(oldFare) NEW: \(newFare)")

var oldAirlines = "G8"
var newAirlines = "CG"
checkFareHike(&oldAirlines, &newAirlines)
print("OLD airlines:\(oldAirlines) newAIrlines:\(newAirlines)")


struct Stack<T>{
    
    var items = [T]()
    
    mutating func push(_ item: T){
        items.append(item)
    }
    
    mutating func pop()-> T{
        return items.removeLast()
    }
    
}

var stackOfStrings = Stack<String>()

stackOfStrings.push("6E")
stackOfStrings.push("G8")
stackOfStrings.push("CG8")
stackOfStrings.push("SG")

print(stackOfStrings)
//stackOfStrings.pop()
stackOfStrings.push("9W")
//stackOfStrings.pop()
print(stackOfStrings)

typealias ContactData = (phone: Int, email: String)

var contact : ContactData?

func contactInfo(){
    
    var contData: ContactData = (8451071128,"codergogoi@gmail.com")
    
    contact = contData
}

print(contact)

contactInfo()

if let email = contact?.email{
    print("Email is : \(email)")
}

if let phone = contact?.phone{
    print("Email is : \(phone)")
}





var corners : [UIRectCorner] = []

 let left = UIRectCorner.topRight

 corners.append(UIRectCorner.topLeft)
 corners.append(UIRectCorner.topRight)
 corners.append(UIRectCorner.bottomLeft)
 corners.append(UIRectCorner.bottomRight)

print(left)







