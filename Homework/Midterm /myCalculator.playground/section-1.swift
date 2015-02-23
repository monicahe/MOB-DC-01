// Playground - noun: a place where people can play

//  ViewController.swift
//  midtermCalculator
//
//  Created by Monica He on 2/19/15.
//  Copyright (c) 2015 Monica He. All rights reserved.

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numField: UITextField!
    
    @IBOutlet weak var btnAllClear: UIButton!
    
    @IBOutlet weak var btnClearField: UIButton!
    //    Need to work on this one
    
    @IBOutlet weak var btnEquals: UIButton!
    
    @IBOutlet weak var btnAdd: UIButton!
    
    @IBOutlet weak var btnMinus: UIButton!
    
    @IBOutlet weak var btnMultiply: UIButton!
    
    @IBOutlet weak var btnDivide: UIButton!
    
    @IBOutlet weak var btnDecimal: UIButton!
    
    @IBOutlet weak var btnNegative: UIButton!
    
    @IBOutlet weak var btn0: UIButton!
    
    @IBOutlet weak var btn1: UIButton!
    
    @IBOutlet weak var btn2: UIButton!
    
    @IBOutlet weak var btn3: UIButton!
    
    @IBOutlet weak var btn4: UIButton!
    
    @IBOutlet weak var btn5: UIButton!
    
    @IBOutlet weak var btn6: UIButton!
    
    @IBOutlet weak var btn7: UIButton!
    
    @IBOutlet weak var btn8: UIButton!
    
    @IBOutlet weak var btn9: UIButton!
    
    
    @IBAction func btn0Pressed(sender: UIButton) {
        handleInput("0")
    }
    
    @IBAction func btn1Pressed(sender: UIButton) {
        handleInput("1")
    }
    
    @IBAction func btn2Pressed(sender: UIButton) {
        handleInput("2")
    }
    
    @IBAction func btn3Pressed(sender: UIButton) {
        handleInput("3")
    }
    
    @IBAction func btn4Pressed(sender: UIButton) {
        handleInput("4")
    }
    
    @IBAction func btn5Pressed(sender: UIButton) {
        handleInput("5")
    }
    
    @IBAction func btn6Pressed(sender: UIButton) {
        handleInput("6")
    }
    
    @IBAction func btn7Pressed(sender: UIButton) {
        handleInput("7")
    }
    
    @IBAction func btn8Pressed(sender: UIButton) {
        handleInput("8")
    }
    
    @IBAction func btn9Pressed(sender: UIButton) {
        handleInput("9")
    }
    
    @IBAction func btnDecPressed(sender: UIButton) {
        if hasIndex(stringToSearch: userInput, characterToFind: ".") == false {
            handleInput(".")
        }
    }
    
    @IBAction func btnNegPressed(sender: UIButton) {
        if userInput.isEmpty {
            userInput = numField.text!
        }
        handleInput("-")
    }
    
    @IBAction func btnACPressed(sender: UIButton) {
        userInput = ""
        accumulator = 0
        updateDisplay()
        numStack.removeAll()
        opStack.removeAll()
    }
    
    @IBAction func btnPlusPressed(sender: UIButton) {
        doMath("+")
    }
    
    @IBAction func btnMinusPressed(sender: UIButton) {
        doMath("-")
    }
    
    @IBAction func btnMultiplyPressed(sender: UIButton) {
        doMath("*")
    }
    
    @IBAction func btnDividePressed(sender: UIButton) {
        doMath("/")
    }
    
    @IBAction func btnEqualPressed(sender: UIButton) {
        doEquals()
    }
    
    var accumulator: Double = 0.0
    var userInput = ""
    
    var numStack: [Double] = []
    var opStack: [String] = []
    
    func hasIndex(stringToSearch str: String, characterToFind chr: Character) -> Bool {
        for c in str {
            if c == chr {
                return true
            }
        }
        return false
    }
    
    func updateDisplay() {
        var iAcc = Int(accumulator)
        if accumulator - Double(iAcc) == 0 {
            numField.text = "\(iAcc)"
            
        } else {
            numField.text = "\(accumulator)"
        }
    }
    
    func handleInput(str: String) {
        if str == "-" {
            if userInput.hasPrefix(str) {
                userInput = userInput.substringFromIndex(userInput.startIndex.successor())
            } else {
                userInput = str + userInput
            }
        }else {
            userInput += str
        }
        accumulator = Double((userInput as NSString).doubleValue)
        updateDisplay()
    }
    
    func doEquals() {
        if userInput == "" {
            return
        }
        if !numStack.isEmpty {
            var oper = ops[opStack.removeLast()]
            accumulator = oper!(numStack.removeLast(), accumulator)
            if !opStack.isEmpty {
                doEquals()
            }
        }
        updateDisplay()
        userInput = ""
    }
    
    
    func doMath(newOp: String) {
        if userInput != "" && !numStack.isEmpty {
            var stackOp = opStack.last
            if !((stackOp == "+" || stackOp == "-") && (newOp == "*" || newOp == "/")) {
                var oper = ops[opStack.removeLast()]
                accumulator = oper!(numStack.removeLast(), accumulator)
                doEquals()
                
            }
            opStack.append(newOp)
            numStack.append(accumulator)
            userInput = ""
            updateDisplay()
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

func add(a: Double, b: Double) -> Double {
    var result = a + b
    return result
}

func subtract(a: Double, b: Double) -> Double {
    var result = a - b
    return result
}

func multiply(a: Double, b: Double) -> Double {
    var result = a * b
    return result
}

func div(a: Double, b: Double) -> Double {
    var result = a / b
    return result
}

typealias Binop = (Double, Double) -> Double

let ops: [String: Binop] = ["+" : add, "-" : subtract, "*" : multiply, "/" : div]

//
//class ViewController: UIViewController {
//
//    @IBOutlet weak var displayScreen: UILabel!
//
//    var firstNumber = Int()
//    var secondNumber = Int()
//    var isTypingNumber = false
//    var results = Int()
//    var operation = ""
//
//    @IBAction func number(sender: AnyObject) {
//
//        var number = sender.currentTitle
//        if isTypingNumber == true {
//            displayScreen.text = displayScreen.text! + number!!
//        } else {
//            displayScreen.text = number;
//        }
//        isTypingNumber = true
//
//    }
//
//    @IBAction func operation(sender: AnyObject) {
//
//        isTypingNumber = false
//        firstNumber = displayScreen.text!.toInt()!
//        operation = sender.currentTitle!!
//
//    }
//
//    @IBAction func equal(sender: AnyObject) {
//
//        secondNumber = displayScreen.text!.toInt()!
//        if operation == "+" {
//            results = firstNumber + secondNumber
//
//        } else if operation == "--" {
//            results = firstNumber - secondNumber
//
//        } else if operation == "X" {
//            results = firstNumber * secondNumber
//
//        } else {
//            results = firstNumber / secondNumber
//        }
////        only integers
//        displayScreen.text = "\(results)"
//
//    }
//
//    @IBAction func allClear(sender: AnyObject) {
//
//        firstNumber = 0
//        secondNumber = 0
//        isTypingNumber = false
//        results = 0
//
//        displayScreen.text = "\(results)"
//
//    }
//
//
//}