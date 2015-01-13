// Playground - noun: a place where people can play
// Lesson 05

import UIKit

// Complete these, in order, writing code under each TODO statement. Each statement calls for a function to be written, write each of them and then immediately call it after the function definition.

// TODO: Write a function that prints out "Hello world!" 10 times

func hello(accept: Int) {
    for index in 0..<accept {
        println ("Hello world!")
    }
}

let x = 5

hello(x)

hello(2)

// TODO: Write a function that prints out "Hit this line {number of iterations of the loop} times!" 20 times

func iterations (times:Int) {
    for index in 1...times {
        println("Hit this line \(times) times!")
    }
}

iterations(20)

// TODO: Write a function that accepts a string as a parameter. Print "Hello {value of string}!"

func helloWorld (value: String) {
    println ("Hello \(value)!")
}

helloWorld("Monica")

// TODO: Write a function accepts a string optional. If the string optional exists, print "Hello {value of string}!". If it doesn't, print "Hello world!"

func optional(accept: String?) {
    var temp = accept!
        println (temp)
    }

optional ("nil")

// TODO: Write a function that takes one parameter, n, and returns an integer, the nth series in the fibonacci
// sequence. The first fibonacci number is 0, the second is 1, the third is 1, the fourth is 2, fifth is 3, sixth is 5, etc. fibonacci numbers at sequence n are the sum of the n-1 and n-2 fibonacci number.

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

fib(10)

// TODO: Write a function that calls the above function in order to print the sum of the first 20 fibonacci numbers.

var sum = 0

func sumFib (count: Int) -> Int {
    for index in 1...count {
        var placeholder = fib(index)
        sum += placeholder
        println (sum)
    }
    return sum
}

sumFib(20)

// TODO: Write a function that takes in a number and prints out whether it is prime, composite or neither.

//func prime (number: Int) -> Int {
//    var base = number
//    if (number % number != 0 && number % 1 != 0) {
//        println ("The nmber \(base) is a composit.")
//    } else {
//        println ("The number \(base) is a prime number.")
//    }
//    return base
//}

// TODO: Write a function that prints out each of the first 20 fibonacci numbers and whether they are prime. (e.g. 0 is not prime or composite, 1 is prime, etc)

//func fibPrime(place: Int) -> Int {
//    var fibNum = place, current = 0, next = 1, result = 0
//    for index in 0..<fibNum {
//        let tempVar = current
//        current = next
//        next = tempVar + current
//        result = tempVar
//        println(result)
//        prime(result)
//    }
//    return result
//}


// TODO: Write a function that takes in two numbers, a bill amount and an optional tip percentage (represented as a float, e.g. .2 = 20% tip). Return a tuple with the total bill amount and the tip amount (if included).

// TODO: Write a function that takes in a string and returns a string that is the reverse of the input. Append two strings using the + operator.

// BONUS TODO: Write a function that takes in an array of strings and a search term string. Return a boolean indicating whether the search term string exists in the array.

// BONUS TODO: Write a function that accepts a string and returns a boolean indicating whether a string is a palindrome (reads the same backwards or forwards).

// BONUS TODO: Write a function that takes in two strings and returns a boolean indicating whether the two strings are equal

// BONUS TODO: Write a function that accepts two parameters, a string and a function that accepts a string and returns a string. Print the result of passing the string into the function 10 times.
