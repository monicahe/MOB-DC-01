
//  ViewController.swift
//  midtermCalculator
//
//  Created by Monica He on 2/19/15.
//  Copyright (c) 2015 Monica He. All rights reserved.

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayScreen: UILabel!

    var firstNumber = Int()
    var secondNumber = Int()
    var isTypingNumber = false
    var results = Int()
    var operation = ""

    @IBAction func number(sender: AnyObject) {
   
        var number = sender.currentTitle
        if isTypingNumber == true {
            displayScreen.text = displayScreen.text! + number!!
        } else {
            displayScreen.text = number;
        }
        isTypingNumber = true
        
    }
    
    @IBAction func operation(sender: AnyObject) {
 
        isTypingNumber = false
        firstNumber = displayScreen.text!.toInt()!
        operation = sender.currentTitle!!
        
    }
    
    @IBAction func equal(sender: AnyObject) {
        
        secondNumber = displayScreen.text!.toInt()!
        if operation == "+" {
            results = firstNumber + secondNumber
            
        } else if operation == "--" {
            results = firstNumber - secondNumber
            
        } else if operation == "X" {
            results = firstNumber * secondNumber
            
        } else {
            results = firstNumber / secondNumber
        }
//        only integers
        displayScreen.text = "\(results)"
        
    }
        
    @IBAction func allClear(sender: AnyObject) {
        
        firstNumber = 0
        secondNumber = 0
        isTypingNumber = false
        results = 0
        
        displayScreen.text = "\(results)"
        
    }
    

}