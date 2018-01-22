//: Playground - noun: a place where people can play

import UIKit

//: Playground - noun: a place where people can play



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

//custom data
typealias ContactData = (phone: Int, email: String)

var contact : ContactData?

func contactInfo(){
    
    let contData: ContactData = (9538754833,"codergogoi@gmail.com")
    
    contact = contData
}

print(contact ?? "Found nil")

contactInfo()

if let email = contact?.email{
    print("Email is : \(email)")
}

if let phone = contact?.phone{
    print("Email is : \(phone)")
}

*/
//designated initializer and convenience  initializer

/*
class Flight{
    
    var flightIdentifier : String
    var flightNumbet : Int
    
 
    init(fIdentifier: String, fNumber: Int) { //designated initilizer
        
        print("Calling designated initializer of  Flight")
        self.flightIdentifier = fIdentifier
        self.flightNumbet = fNumber
    }
    
    convenience init(fIdentifier: String) { // convenience initializer
        
        print("calling convenience initializer with parameter Flight")
        self.init(fIdentifier: fIdentifier, fNumber: 0)
    }
    
    convenience init(){
        print("Calling convenience initializer Flight")
        self.init(fIdentifier: "Not Set", fNumber: 0)
    }
 
}
*/
/*
let flight1 = Flight() // call convenience init
let flight2 = Flight(fIdentifier: "6E") // convenience init
let flight3 = Flight(fIdentifier: "6E", fNumber: 322) // designated init
*/

/*
class DirectFlight: Flight{
    
   
    override init(fIdentifier: String, fNumber: Int) {
        
        super.init(fIdentifier: fIdentifier, fNumber: fNumber)
    }
    
    init(flightName: String) {
        
        super.init(fIdentifier:flightName , fNumber: 0) // you can call it beacuse it is a Designated initializer
        //super.init(fIdentifier: flightName) // cannot call from subclass
    }
    
    /* Rule of call designated & convenience initializer
     1. A designated initializer must call a designated initializer from its immediate supperclass. A designated initializer of a subclass cannot call a convenience init from its supperclass.
     2. A convenience initializer must call another initializer from the same class
     3. A convenience inializer must ultmately call a designated initializer
     
     */
    
    func doAdditionalOperations(){
        
        print("Additional Flight Filter")
        
    }
    
}
*/

/*
let directFlights = DirectFlight(fIdentifier: "SG", fNumber: 549)
let directFlightWithStops = DirectFlight()

//Homework
let arr = [["index": "0", "type": "O"], ["index": "0", "type": "R"],["index": "1", "type": "O"],["index": "1", "type": "R"]]

let newArr = arr

for item in arr{
    
    if let index = item["index"]{
         // print(index)
        let filteredArray = newArr.filter{ $0["index"] == "\(index)"}
        print(filteredArray)
    }
}

//Enum
enum ActionType{
    case onLoginTap
    case onLogoutTap
    case onSignupTap
    case onNotYouTap
}

var action = ActionType.onLoginTap
action  = .onNotYouTap

switch action {
case .onLoginTap:
    print("login")
case .onLogoutTap:
    print("Logout")
default:
    print("default")
    
}

//Optional Chaining
struct AppleDevice{
    
    var type: String?
    var price: Double?
    var color: String?
    
}

var newDevice : AppleDevice?
newDevice = AppleDevice(type: "iPhone 7", price: 999, color: "Space Gray")

let currentDevice = newDevice?.type // optional chain

if let deviceType = currentDevice{ // check if there any value in type variable
    print("Current Device is \(deviceType)")
}else{
    print("Current Device is not realesed!")
}
*/

/*
//Class VS struct
//==== anyone can change the original data ====//
class OfficeGoogleDocSheet{
    
    var taskOfTheDay: String
    var lastUpdatedBy: String
    
    init(task: String, updatedBy: String) {
        self.taskOfTheDay = task
        self.lastUpdatedBy = updatedBy
    }
    
}

//===== only I can change the original content ===//
struct MyGoogleDocSheet{
    
    var taskOfTheDay: String
    var lastUpdatedBy: String
    
    init(task: String, updatedBy: String) {
        self.taskOfTheDay = task
        self.lastUpdatedBy = updatedBy
    }
}

print("============ Class implementation ==========")

// reference type operations
var officeDoc = OfficeGoogleDocSheet(task: "Complete this sprint", updatedBy: "user1")

print("Original Task before Changed: \(officeDoc.taskOfTheDay) Updated: \(officeDoc.lastUpdatedBy)")

var forwardedOfficeDoc = officeDoc

forwardedOfficeDoc.lastUpdatedBy = "user 2"
forwardedOfficeDoc.taskOfTheDay = "Complete some diferent Task"

print("Original Task after changed: \(officeDoc.taskOfTheDay) Updated: \(officeDoc.lastUpdatedBy)")
print("Modified Task: \(forwardedOfficeDoc.taskOfTheDay) Updated: \(forwardedOfficeDoc.lastUpdatedBy)")


print("============ struct implementation ==========")

//Value type
var myDoc = MyGoogleDocSheet(task: "Need to finish todays task", updatedBy: "personal_user")
print("Original Task Before Changed: \(myDoc.taskOfTheDay) Updated:\(myDoc.lastUpdatedBy)")

var forwardedMyDoc = myDoc
forwardedMyDoc.lastUpdatedBy = "user1"
forwardedMyDoc.taskOfTheDay = "Finish the sprint task first"

print("Original Task after Changed: \(myDoc.taskOfTheDay) Updated:\(myDoc.lastUpdatedBy)")
print("Modified Task: \(forwardedMyDoc.taskOfTheDay) Updated:\(forwardedMyDoc.lastUpdatedBy)")


*/

/*
struct Traveller{
    
    let paxFirstName : String
    let paxLastName : String
    let paxAge: Int
 
 }

let pax1 = Traveller(paxFirstName: "Jayanta", paxLastName: "Gogoi", paxAge: 32)
let pax2 = Traveller(paxFirstName: "Semita", paxLastName: "Baruah", paxAge: 31)
let pax3 = Traveller(paxFirstName: "Simual", paxLastName: "Waren", paxAge: 28)
let pax4 = Traveller(paxFirstName: "Zakir", paxLastName: "Lama", paxAge: 22)
let pax5 = Traveller(paxFirstName: "Aman", paxLastName: "Kotoki", paxAge: 56)

let travellers: [Traveller] = [pax1, pax2, pax3, pax4, pax5]

//sorted used for make a sorted copy of original array without affecting original sorting order
let currentTravellers = travellers.sorted(by: {$0.paxFirstName > $1.paxLastName})

for pax in currentTravellers{
    print("\(pax.paxFirstName) \(pax.paxLastName) age: \(pax.paxAge)")
}


//sort the original array if original order is not important
travellers.sorted(by: {$0.paxFirstName > $1.paxLastName})

for pax in travellers{
    print("\(pax.paxFirstName) \(pax.paxLastName) age: \(pax.paxAge)")
}
*/

// Retain Cycle

class Flight{
    
    let flightNo: String
    
    //strong reference
    var seatInfo : SeatSequence?
    
    init(fno: String, seatInfo: SeatSequence?) {
        
        self.flightNo = fno
        self.seatInfo = seatInfo
        print("initilized Flight")
        
    }
    
    deinit {
        print("Flight is being deinit")
    }
    
}

class SeatSequence{
    
    let seatNumber: String
    //strong reference
    //var currentFlight: Flight? // uncomment to check the retail cycle
    
    //weak reference
    weak var currentFlight: Flight? // comment this to check retails cycle
    
    init(sNumber: String, currentFlight: Flight?) {
        
        self.seatNumber = sNumber
        self.currentFlight = currentFlight
        print("Initilized seat sequence....")
        
    }
  
    deinit {
        print("Seat Sequence Deinitlilzed...")
    }
    
}

class SeatOperation{
    
    var flight: Flight?
    var seatSequence: SeatSequence?
    
    func setupSeats(){
        
        flight = Flight(fno: "E245", seatInfo: nil)
        seatSequence = SeatSequence(sNumber: "A23", currentFlight: nil)
 
    }
    
    func updateCurrentFlightSeats(){
        
        flight?.seatInfo = seatSequence
        seatSequence?.currentFlight = flight
    }
    
    
    func doneSeatOperation(){
        flight = nil
        seatSequence = nil
    }
    
    
}

var seatOperation = SeatOperation()
seatOperation.setupSeats()
seatOperation.updateCurrentFlightSeats()
seatOperation.doneSeatOperation() // created retain cycle due to strong reference with Flight in SeatSequence. Always kep weak reference to the parent if child class is pointing to parent class for avoid retain cycle.
























