import Foundation

var greeting = "Hello, playground"

//structures in swift is a way of grouping data together and giving it a name.
//when you use structures instead of classs you don't have to use constructors
//structures cannot inherit from themselves

struct Person {
    let name: String
    let age: Int
}

let foo = Person(name: "Buhle", age: 20)

let age = foo.age

 //Below is how you would add the constructor
struct CommodoreComputer{
    let name: String
    let manufacturer: String
    init(name: String){ //init is the constructor
        self.name = name
        self.manufacturer = "Commodore"
    }
}

let c64 = CommodoreComputer(name: "c64")
c64.name
c64.manufacturer


//the copy method below is acting like a set method for bike
// self is the this keyword.
struct Bike {
    let manufacturer: String
    let currentSpeend: Int
    func copy(currentSpeed: Int) -> Bike{
        Bike(manufacturer: self.manufacturer, currentSpeend: currentSpeed)
    }
}

let bike1 = Bike(manufacturer: "HD", currentSpeend: 20)
bike1.copy(currentSpeed: 10)

let bike2 = bike1.copy(currentSpeed: 30)

print(bike2)
