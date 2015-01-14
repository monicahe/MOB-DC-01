// Playground - noun: a place where people can play

import UIKit

class Vehicle {
    var wheels = 0
    var name: String = ""
    var color:String = ""
    var numberOfSeats = 0
    var numberOfAxels = 0
    
    func go() {
        println ("Vroom vroom")
    }
    
}

var myCar = Vehicle()
myCar.wheels = 4
myCar.name = "Car"
myCar.color = "Green"
myCar.numberOfSeats = 4
myCar.numberOfAxels = 4

myCar