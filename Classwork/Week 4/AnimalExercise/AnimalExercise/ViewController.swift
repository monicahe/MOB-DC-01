//
//  ViewController.swift
//  AnimalExercise
//
//  Created by Monica He on 1/14/15.
//  Copyright (c) 2015 Monica He. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var animalName: UITextField!
   
    @IBOutlet weak var displayAnimal: UILabel!
    
    @IBAction func createCat(sender: AnyObject) {
        
        var animalCat = Animal()
        animalCat.name = animalName.text
        animalCat.species = "cat"
        
        displayAnimal.text = animalCat.representation()
        
    }

    @IBAction func createDog(sender: AnyObject) {
        var animalDog = Animal()
        animalDog.name = animalName.text
        animalDog.species = "dog"
        
        displayAnimal.text = animalDog.representation()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

