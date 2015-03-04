//
//  Animal.swift
//  Core Data MH 2-25
//
//  Created by Monica He on 2/25/15.
//  Copyright (c) 2015 Monica He. All rights reserved.
//

import Foundation

import CoreData

@objc(Animal)
//Allows us to use this model as a managed object

class Animal: NSManagedObject {
    
//    using @NSManaged means it doesn't have to have content in the beginning
    
    @NSManaged var name: String
    @NSManaged var numberOfLegs: Int32
    @NSManaged var hasFur: Bool
    @NSManaged var noise: String
    
//    now tied class to entity
    
    
    
}
