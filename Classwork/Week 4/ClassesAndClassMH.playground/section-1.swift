// Playground - noun: a place where people can play

import UIKit

//numberOfLegs is a property of Animal

class Animal {
    var numberOfLegs = 0
    var hasFur = true
    
    func speak() {
        
    }
}

var tedi = Animal()

tedi.hasFur = false

tedi.numberOfLegs = 2

println(tedi.numberOfLegs)

var ena = Animal()

ena.hasFur = true

ena.numberOfLegs = 4

//Initialization - allow user to set the property from the beginning
//init(numberOfLegs)

//class Animal {
//    var numberOfLegs
//    var hasFur = false
//    init(legs: Int) {
//          numberOfLegs = legs
//      }
//    func speak() {
//        
//    }
//}
//var tedi = Animal(legs: 2)

//init is the first thing that runs
//For us to be able to access properties inside classes, we use prefix of self - so self.property

//class Animal {
//    var numberOfLegs
//    var hasFur
//    var noise = "AAAAAH"
//    init(legs: Int, hasFur: Bool) {
//          self.numberOfLegs = legs
//          self.hasFur = hasFur
//      }
//    func speak() {
//      println(self.noise)
//    }
//
//var tedi = Anima(legs: 2, hasFur: false)
//



