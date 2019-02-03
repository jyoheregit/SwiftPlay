import Foundation

protocol Animal {
    
    typealias Kilos = Double
    
    var numberOfLegs : Int { get set }
    var quantityAteToday : Kilos { get set }
    
    func eat()
    mutating func updateQuantityEaten(quantity: Kilos) // mutating is needed in protocol as well
}

struct Cat : Animal {
    
    var numberOfLegs: Int
    var quantityAteToday: Double = 0.0
    
    init(numberOfLegs : Int) {
        self.numberOfLegs = numberOfLegs
    }
    
    func eat() {
        print ("Cat eating")
    }
    
    mutating func updateQuantityEaten(quantity: Kilos) {
        self.quantityAteToday = quantity
        print("updated quantity")
    }
}

var cat = Cat(numberOfLegs: 4) // This has to be var
cat.numberOfLegs
cat.eat()
cat.updateQuantityEaten(quantity: 2.0)
cat.quantityAteToday

///////
let swift = "swift string"
let ns = NSString(string: swift)

////////
var i = 2

repeat {
    print(i)
    i *= 2
} while (i < 128)

//////////

let firstName = "Simon"

switch firstName {
case "Simon":
    fallthrough
    
case "Malcom", "Zoe", "Kaylee":
    print("Crew")
    
default:
    print("Not crew")
}

/////

let numbers = [1, 2, 3].flatMap { [$0, $0] }
numbers

let numbersMap = [1, 2, 3].map { [$0, $0] }
numbersMap

////////

func greet(_ name: inout String) {
    name = name.uppercased()
    print("Greetings, \(name)!")
}

var name = "Mal"
greet(&name)
print("Goodbye, \(name)!")

//////////

func greet(names: String...) {
    print("Criminal masterminds:", names.joined(separator: ", "))
}

greet(names: "Malcolm", "Kaylee", "Zoe")

/////////

var possibleNumber = "1701"
var convertedNumber = Int(possibleNumber)
convertedNumber

possibleNumber = ""
convertedNumber = Int(possibleNumber)
convertedNumber

////

for i in stride(from: 1, to: 17, by: 4) {
    print(i)
}

/////

var first = [1, 2, 3]
var second = ["one", "two", "three"]
var third = Array(zip(first, second))
print(third)

//////
func doStuff() {
    print("Stuff has been done")
}

let result : Any? = doStuff()
////

let names = ["River", "Kaylee", "Zoe"]
let resultNames = names.sorted { $0 > $1 }
print(resultNames)

/////

func getNumber() -> Int {
    print("Fetching number...")
    return 5
}

func printStatement(_ result: @autoclosure () -> Bool) {
    print("Here is the number: \(result())")
    print("Nothing to see here.")
}

printStatement(getNumber() == 5)

//////

func foo(_ function: (Int) -> Int) -> Int {
    return function(function(5))
}

func bar<T: BinaryInteger>(_ number: T) -> T {
    return number * 3
}

print(foo(bar))

/////////////////

struct TaylorFan {
    static var favoriteSong = "Shake it Off"
    var name: String
    var age: Int
}

let fan = TaylorFan(name: "James", age: 25)
print(TaylorFan.favoriteSong) // cannot be used on fan

//////

func greeting(_ nameRiver: String) {
    let nameRiverNew = nameRiver.uppercased()
    print("Greetings, \(nameRiverNew)!")
}

greeting("river")

//////////////

let numbersArray = [1, 3, 5, 7, 9]
let resultValue = numbers.reduce(0, +)

////////////
