//
//  RatViewController.swift
//  ZodiacV5
//
//  Created by Monica He on 3/23/15.
//  Copyright (c) 2015 Monica He. All rights reserved.
//

import UIKit

class AnimalDetailViewConroller: UIViewController {
    
    var detailAnimal:Animal? {
        didSet {
            println("Showing detail for the animal with name \(detailAnimal?.name)")
        }
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }


}
