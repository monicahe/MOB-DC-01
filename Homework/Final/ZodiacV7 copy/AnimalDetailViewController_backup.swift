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
    
    var letter: UIImageView!
    var picture: UIImageView!
    var showingPicture = true
    
    var detailAnimal:Animal? {
        didSet {
            println("Showing detail for the animal with name \(detailAnimal?.name), \(detailAnimal?.image)")
        }
    }
    
    override func viewWillAppear(animated: Bool) {
        
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        
        super.viewDidLoad()
        letter = UIImageView(image: UIImage(named: detailAnimal!.character))
        picture = UIImageView(image: UIImage(named: detailAnimal!.image))
        
        let singleTap = UITapGestureRecognizer(target: self, action: Selector ("tapped"))
        singleTap.numberOfTapsRequired = 1
        
        cardView.addGestureRecognizer(singleTap)
        cardView.userInteractionEnabled = true
        cardView.addSubview(letter)
        view.addSubview(cardView)
        
    }
    
    func tapped() {
        if (showingPicture) {
            UIView.transitionFromView(picture, toView: letter, duration: 1, options: UIViewAnimationOptions.TransitionFlipFromRight, completion: nil)
            showingPicture = false
        } else {
            UIView.transitionFromView(letter, toView: picture, duration: 1, options: UIViewAnimationOptions.TransitionFlipFromLeft, completion: nil)
            showingPicture = true
        }
        
        
    }
    
    
}
