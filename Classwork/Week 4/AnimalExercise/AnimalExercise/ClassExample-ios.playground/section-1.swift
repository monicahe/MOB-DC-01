// Playground - noun: a place where people can play

import Foundation
import UIKit

var view = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
//background color is an object property
//UIColor purpleColor is a class method

view.backgroundColor = UIColor.purpleColor()
//Class, Initializer with Property, then a Class Method
//Instance Method would be: 
//var color = UIColor()

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


//Initializer - init
//Initializers set defaults
//self.legs = legs means whatever is entered as legs becomes the legs variable of the class

class Animal {
    var name:String
    var legs:Int
    init(legs:Int, name:String) {
        self.legs = legs
        self.name = name
    }
    
    func speak() {
        println("AHHHHHHHH!")
    }
}

class Dog: Animal {

    var isSmart = true
    override func speak() {
        println("Woof!")
    }
}

//To override the default func, you need to use "override"

var doggie = Dog(legs: 4, name: "Ena")

doggie.legs
doggie.speak()
doggie.isSmart

doggie.isSmart = false

doggie.isSmart









