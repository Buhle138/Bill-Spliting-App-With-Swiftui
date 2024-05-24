import Foundation

//enumerations is the categorization of similar values
//such as animals dogs or people
//init is a custructor for Animal.
struct Animal{
    let type: String
    init(type: String){
        self.type = type
    }
}

//declaration of an enum.
enum Animals{
    case cat
    case dog
    case rabbit
}

let cat = Animals.cat
let dog = Animals.dog

let rabbit = Animals.rabbit

switch cat {
case .cat:
   "This is a cat"
    break
case .dog:
    "This is a dog"
    break
case .rabbit:
    "This is a rabbit"
    break
}
