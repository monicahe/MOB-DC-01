// Playground - noun: a place where people can play

import Foundation
import UIKit

var view = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))

//class Animal {
//    var species:String = ""
//    var name:String = ""
//    
//    func representation() -> String {
//        return "The animal is a \(self.species), its name is \(self.name)."
//        
//    }
//    
//}
//
////func printAnimalName(animal: Animal) {
//    println("Animal's name is \(animal.name)")
//}
//
//
//var doggie = Animal()
//doggie.name = "Ena"
//printAnimalName(doggie)

//The parameter can be the instance of a class
//In this case, instead of a String or an Integer, it is an animal type

class Animal {
    var species:String = ""
    var legs = 0

    func speak() {
        println("AHHHHHHHH!")
    }
}

class Dog: Animal {
//        init(legs) {
//    }
    var isSmart = true
    override func speak() {
        println("Woof!")
    }
}

//To override the default func, you need to use "override"

var doggie = Dog()
doggie.legs
doggie.speak()
doggie.isSmart

doggie.isSmart = false

doggie.isSmart








