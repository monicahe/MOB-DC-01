// Playground - noun: a place where people can play

import UIKit

var wayneGretsky = ["first_name" : "Wayne", "last_name" : "Gretsky", "team" : "Capitals"]

wayneGretsky["first_name"]
// says Some "Wayne" because it is optional. Need to do conditional unwrap

if let wayneName = wayneGretsky["first_name"] {
    println(wayneName)
}

var ena: [String: Int] = [:]

//Best practice for dictionaries is to have strings
//If no : Int - then just an array of strings

//Set values in dictionary
ena["legs"] = 4

ena["eyes"] = 2

ena

//ena["eyes"] = nil
//That would remove it from the dictionary

ena["paws"] = 4

ena["eyes"] = 3

ena.removeValueForKey("eyes")
//Another way to remove something from the dictionary - same as setting it to nil

//"KEY" - access the dictionary by the keys

for (key, value) in ena {
    println("Ena has \(value) \(key)")
    
}

for enaKey in ena.keys {
    println(enaKey)
}

var articles = [
    ["title": "Ena breaks tail", "date": "02/23/15", "author": "tedi"],
    ["title": "MOB class does Core Data", "date": "02/25/15", "author": "Arthur"]
]

articles[1]["title"]!

for article in articles {
    println (article ["title"]!)
}






