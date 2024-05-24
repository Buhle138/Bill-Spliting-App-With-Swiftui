import Foundation



//You always need to create a constructor with classes.
//classes can have inheritance but structures cannot have inheritance.
class Person{
    var name: String
    var age: Int
    
    init(
        age: Int,
        name: String
    ){
        self.age = age;
        self.name = name
    }
    
    func increaseAge() {
        self.age += 1
    }
}

let foo = Person(age: 20, name: "BUhle")
foo.increaseAge()
foo.age
