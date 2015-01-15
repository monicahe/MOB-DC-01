//
//  Animal.swift
//  AnimalExercise
//
//  Created by Monica He on 1/14/15.
//  Copyright (c) 2015 Monica He. All rights reserved.
//

import Foundation

class Animal {
    var species:String = ""
    var name:String = ""
    
    func representation() -> String {
        return "The animal is a \(self.species), its name is \(self.name)."
        
    }
    
    
}

//func stringRepresentation() {
//    println("Species is \(self.species), name is \(self.name)")
//this will just return the text in the debugger
//If you set variable to a method, you need to return something
//that's why you need to do return ""
