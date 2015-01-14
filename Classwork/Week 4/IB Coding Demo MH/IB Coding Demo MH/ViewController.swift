//
//  ViewController.swift
//  IB Coding Demo MH
//
//  Created by Monica He on 1/12/15.
//  Copyright (c) 2015 Monica He. All rights reserved.
//

import UIKit
// Brings in the functions like buttons, but some additional functions will have to be imported additionally

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBAction func changeLabel(sender: AnyObject) {
       nameLabel.text = nameTextField.text
    }
    
    @IBAction func changeLabelOnDrag(sender: UISlider) {
        let sliderValue = Int(sender.value)
        nameLabel.text = "\(sliderValue)"
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        println("Testing loaded view")
    }
    
}

