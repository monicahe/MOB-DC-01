// Playground - noun: a place where people can play

//
//  AnimalDetailViewController.swift
//  ZodiacV7
//
//  Created by Monica He on 3/24/15.
//  Copyright (c) 2015 Monica He. All rights reserved.
//

import UIKit

class AnimalDetailViewConroller: UIViewController {
    
    @IBOutlet weak var cardView: UIImageView!
    @IBOutlet weak var letterView: UIImageView!
    
    @IBAction func changeCard(sender: AnyObject) {
        
        println ("The sender tag is \(sender.tag)")
        
        var tag = sender.tag + 1
        
    }
    
    var letter: UIImageView!
    var picture: UIImageView!
    var showingPicture = true
    
    var detailAnimal:Animal? {
        didSet {
            println("Showing detail for the animal with name \(detailAnimal?.name), \(detailAnimal?.image)")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let singleTap = UITapGestureRecognizer(target: self, action: "tapped")
        
        let singleTapTwo = UITapGestureRecognizer(target: self, action: "tapped")
        
        self.cardView.userInteractionEnabled = true
        self.cardView.addGestureRecognizer(singleTap)
        self.letterView.userInteractionEnabled = true
        self.letterView.addGestureRecognizer(singleTapTwo)
        
        self.cardView.image = UIImage(named: detailAnimal!.character)
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    func tapped() {
        if (showingPicture) {
            UIView.transitionFromView(self.cardView, toView: self.letterView, duration: 1, options: UIViewAnimationOptions.TransitionFlipFromRight, completion: nil)
            showingPicture = false
        } else {
            UIView.transitionFromView(self.letterView, toView: self.cardView, duration: 1, options: UIViewAnimationOptions.TransitionFlipFromLeft, completion: nil)
            showingPicture = true
        }
        
        
    }
    
    
}
