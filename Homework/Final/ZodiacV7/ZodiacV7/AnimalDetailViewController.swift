//
//  AnimalDetailViewController.swift
//  ZodiacV7
//
//  Created by Monica He on 3/24/15.
//  Copyright (c) 2015 Monica He. All rights reserved.
//

import UIKit

class AnimalDetailViewConroller: UIViewController {
    
    @IBOutlet weak var letterView: UIImageView!

    @IBOutlet weak var pictureView: UIImageView!
    
    @IBAction func changeCard(sender: AnyObject) {
        
        println ("The sender tag is \(sender.tag)")
        
        println ("The rank of the sign is \(detailAnimal?.rank)")
        
    }
    
//    var letter: UIImageView!
//    var picture: UIImageView!
    
    var showingPicture = true
    
    var detailAnimal:Animal? {
        didSet {
            println("Showing detail for the animal with name \(detailAnimal?.name), \(detailAnimal?.image)")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let singleTap = UITapGestureRecognizer(target: self, action: Selector ("tapped"))
        singleTap.numberOfTapsRequired = 1
        let singleTapTwo = UITapGestureRecognizer(target: self, action: Selector ("tapped"))
        singleTapTwo.numberOfTapsRequired = 1
        
        self.pictureView.userInteractionEnabled = true
        self.pictureView.addGestureRecognizer(singleTap)
        self.letterView.userInteractionEnabled = true
        self.letterView.addGestureRecognizer(singleTapTwo)
        
        self.letterView.image = UIImage(named: detailAnimal!.character)
     
    }

    
//    override func viewWillAppear(animated: Bool) {
//        
//        super.viewWillAppear(animated)
//        self.navigationController?.setNavigationBarHidden(false, animated: true)
//        
//        super.viewDidLoad()
//        letter = UIImageView(image: UIImage(named: detailAnimal!.character))
//        
//        picture = UIImageView(image: UIImage(named: detailAnimal!.image))
//        
//        let singleTap = UITapGestureRecognizer(target: self, action: Selector ("tapped"))
//        singleTap.numberOfTapsRequired = 1
//        
//        cardView.addGestureRecognizer(singleTap)
//        cardView.userInteractionEnabled = true
//        cardView.backgroundColor = UIColor.redColor()
//        cardView.addSubview(letter)
//        view.addSubview(cardView)
//    
//    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    
    func tapped() {
        if (showingPicture) {
            UIView.transitionFromView(self.pictureView, toView: self.letterView, duration: 1, options: UIViewAnimationOptions.TransitionFlipFromRight, completion: nil)
            showingPicture = false
        } else {
            UIView.transitionFromView(self.letterView, toView: self.pictureView, duration: 1, options: UIViewAnimationOptions.TransitionFlipFromLeft, completion: nil)
            showingPicture = true
        }
    }
    
//    func tapped() {
//        if (showingPicture) {
//            UIView.transitionFromView(picture, toView: letter, duration: 1, options: UIViewAnimationOptions.TransitionFlipFromRight, completion: nil)
//            showingPicture = false
//        } else {
//            UIView.transitionFromView(letter, toView: picture, duration: 1, options: UIViewAnimationOptions.TransitionFlipFromLeft, completion: nil)
//            showingPicture = true
//        }
//    
//        
//    }
    
    
}
