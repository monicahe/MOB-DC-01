//
//  ViewController.swift
//  ZodiacV5
//
//  Created by Monica He on 3/23/15.
//  Copyright (c) 2015 Monica He. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var animals:[Animal] = []
    var selectedAnimal:Animal?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.createAnimals()
    }
    
    func createAnimals() {
        var rat = Animal()
        rat.name = "Rat"
        rat.type = "Whatever"
        animals.append(rat)
        
        var dog = Animal()
        dog.name = "Ena"
        dog.type = "Golden Retriever"
        animals.append(dog)
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

