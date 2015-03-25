//
//  ViewController.swift
//  ZodiacV7
//
//  Created by Monica He on 3/24/15.
//  Copyright (c) 2015 Monica He. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var animals:[Animal] = []
    var selectedAnimal:Animal?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.createAnimals()
    }
    
    func createAnimals() {
        var rat = Animal()
        rat.name = "Rat"
        rat.character = "Rat_character.png"
        rat.image = "Rat_image.png"
        rat.rank = "1"
        animals.append(rat)
        
        var ox = Animal()
        ox.name = "Ox"
        ox.character = "Ox_character.png"
        ox.image = "Ox_image.png"
        ox.rank = "2"
        animals.append(ox)
        
        var tiger = Animal()
        tiger.name = "Tiger"
        animals.append(tiger)
        
        var rabbit = Animal()
        rabbit.name = "Rabbit"
        animals.append(rabbit)
        
        var dragon = Animal()
        dragon.name = "Dragon"
        animals.append(dragon)
        
        var snake = Animal()
        snake.name = "Snake"
        animals.append(snake)
        
        var horse = Animal()
        horse.name = "Horse"
        animals.append(horse)
        
        var lamb = Animal()
        lamb.name = "Lamb"
        animals.append(lamb)
        
        var monkey = Animal()
        monkey.name = "Monkey"
        animals.append(monkey)
        
        var rooster = Animal()
        rooster.name = "Rooster"
        animals.append(rooster)
        
        var dog = Animal()
        dog.name = "Ena"
        animals.append(dog)
        
        var pig = Animal()
        pig.name = "Hog"
        animals.append(pig)
    
    }
    
    @IBAction func tappedAnimal(sender: UIButton) {
        self.selectedAnimal = self.animals[sender.tag]
        self.performSegueWithIdentifier("showDetail", sender: self)
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        println("Prepare for segue")
        let destinationViewController = segue.destinationViewController as? AnimalDetailViewConroller
        
        destinationViewController?.detailAnimal = self.selectedAnimal
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
