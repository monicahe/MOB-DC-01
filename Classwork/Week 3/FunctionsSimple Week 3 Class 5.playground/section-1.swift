// Playground - noun: a place where people can play

import UIKit

func hello() {
    println ("Hello world")
}

hello()
hello()
hello()

func sum(firstNum: Int, secondNum: Int) -> Int {
    let newSum = firstNum + secondNum
    return newSum
}

// return - now we see the results displayed when you run the func. If not, results only displayed within the func code

sum(10, 10)
// you get 20

sum(20, 10)

var x = sum(10, 20)
var y = sum(x, 15)

// the function would not run until we call it
// can have functions within functions

func fib(place: Int) -> Int {
    var fibNum = place, current = 0, next = 1, result = 0
    for index in 0..<fibNum {
        let tempVar = current
        current = next
        next = tempVar + current
        result = tempVar
    }
    return result
}

fib(9)
fib(23)
fib(30)

func fib(#place: Int) -> Int {
    var fibNum = place, current = 0, next = 1, result = 0
    for index in 0..<fibNum {
        let tempVar = current
        current = next
        next = tempVar + current
        result = tempVar
    }
    return result
}

fib(place: 8)

var q = 10
fib(place: q)

func fib(place: Int?) -> Int {
    var fibNum = place!, current = 0, next = 1, result = 0
    for index in 0..<fibNum {
        let tempVar = current
        current = next
        next = tempVar + current
        result = tempVar
    }
    return result
}

// ? makes it optional

var num: Int? = 5
num
if let numValue = num {
    println (numValue + 5)
}

// num is some value - optional, in case the user returns something that is different from expect
// This particular case it does unwrapping automatically
// unwrapping - when you set something as optional, it returns something as either a nil, or something that is "struct" - some value that is a 5. So we need to pull something from the bag.

num!
// THis is how you should always unwrap, rather than using ! - like num!
// It makes assumptions and things may break. So use the if let statement that sets the optional value

func save(name: String) -> (first: String, last: String) {
    var lastName = "Konda"
    return (name, lastName)
}

// first string but return firstName - as long as the type is the same

var myName = save("Tedi")

myName.first
myName.last

// But can refer to the things by the variables listed in the func








