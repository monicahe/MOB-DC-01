// Playground - noun: a place where people can play

import UIKit

var myArray = [1, 4, 10, 15, 20]

// without giving it type, it is inferred

var secondArray: [Int] = []

// array of integers - creating an empty array. Can't just say secondArray = []
// [] means empty array. But must begin by defining it with expectations

var stringArray: [String] = []

myArray[2]

myArray.first!
myArray.last

// without the ! it would say some

// in arrays the only property is "get"

secondArray.append(20)
secondArray

// append naturally points to the very end

myArray.insert(100, atIndex: 2)

myArray

myArray.insert(50, atIndex: myArray.count - 1)

myArray.insert(500, atIndex: myArray.count)

myArray.isEmpty

stringArray.isEmpty

myArray.removeAtIndex(5)

myArray

for i in myArray {
    if i == 100 {
        println ("BINGO")
    } else {
    println (i)
        
}
}


