//
//  ViewController.swift
//  Core Data MH 2-25
//
//  Created by Monica He on 2/25/15.
//  Copyright (c) 2015 Monica He. All rights reserved.
//

import UIKit

import CoreData

class ViewController: UIViewController {

    var appDelegate = (UIApplication.sharedApplication().delegate as AppDelegate)
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        if let moc = self.appDelegate.managedObjectContext {
            var ena = NSEntityDescription.insertNewObjectForEntityForName("Animal", inManagedObjectContext: moc) as Animal
            ena.name = "Tedi"
            ena.numberOfLegs = 4
            ena.hasFur = true
            ena.noise = "Woof woof"
            
//            Still have to tell it to save
            
            appDelegate.saveContext()
            
        }
        
    }

    @IBAction func loadAnimalData(sender: AnyObject) {
        
        if let moc = self.appDelegate.managedObjectContext {
            let fetchAnimals = NSFetchRequest(entityName: "Animal")
            
//            Predicate - not call all just one
//            Format is what you filter by
            
            
//            Must add predicate before executing fetch         request
            let animalPredicate = NSPredicate(format: "name contains %@", "edi")
            fetchAnimals.predicate = animalPredicate
            
            if let animals: [Animal] = moc.executeFetchRequest(fetchAnimals, error: nil) as? [Animal] {
                
//            Cheat sheet has example of entering an error
                
                for animal in animals {
                    println(animal.name)
                    println(animal.noise)
                    
                }
                
            }

        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

