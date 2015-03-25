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
        tiger.character = "Tiger_character.png"
        tiger.image = "Tiger_image.png"
        tiger.rank = "3"
        animals.append(tiger)
        
        var rabbit = Animal()
        rabbit.name = "Rabbit"
        rabbit.character = "Rabbit_character.png"
        rabbit.image = "Rabbit_image.png"
        rabbit.rank = "4"
        animals.append(rabbit)
        
        var dragon = Animal()
        dragon.name = "Dragon"
        dragon.character = "Dragon_character.png"
        dragon.image = "Dragon_image.png"
        dragon.rank = "5"
        animals.append(dragon)
        
        var snake = Animal()
        snake.name = "Snake"
        snake.character = "Snake_character.png"
        snake.image = "Snake_image.png"
        snake.rank = "6"
        animals.append(snake)
        
        var horse = Animal()
        horse.name = "Horse"
        horse.character = "Horse_character.png"
        horse.image = "Horse_image.png"
        horse.rank = "7"
        animals.append(horse)
        
        var lamb = Animal()
        lamb.name = "Lamb"
        lamb.character = "Lamb_character.png"
        lamb.image = "Lamb_image.png"
        lamb.rank = "8"
        animals.append(lamb)
        
        var monkey = Animal()
        monkey.name = "Monkey"
        monkey.character = "Monkey_character.png"
        monkey.image = "Monkey_image.png"
        monkey.rank = "9"
        animals.append(monkey)
        
        var rooster = Animal()
        rooster.name = "Rooster"
        rooster.character = "Rooster_character.png"
        rooster.image = "Rooster_image.png"
        rooster.rank = "10"
        animals.append(rooster)
        
        var dog = Animal()
        dog.name = "Ena"
        dog.character = "Dog_character.png"
        dog.image = "Dog_image.png"
        dog.rank = "11"
        animals.append(dog)
        
        var pig = Animal()
        pig.name = "Hog"
        pig.character = "Pig_character.png"
        pig.image = "Pig_image.png"
        pig.rank = "12"
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
