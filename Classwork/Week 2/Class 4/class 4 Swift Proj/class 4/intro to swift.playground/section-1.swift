// Playground - noun: a place where people can play

import UIKit

// Strings are usually presented in double quotes

"this is a string"

// Integers are whole numbers
5
6
3000000000

// Doubles and floats
54.75

// Boolean
true
false

// Arrays - to be covered later

// Dictionaries - to be covered later

// Variable: inferred

var myVariable = "Hello world"
println(myVariable)

// Variable: not inferred

var mySecondVariable: String = "Hello world again"

// Still a string

mySecondVariable = "10"

var x = 10

// integer. Or can FLOAT as in x: float = 10.0

var y = 4

x + y
x * y
// Not getting remainder because inferred type of variables is an integer
x / y
x - y

x % y

16 % 5

y = 20

let z = 200

y = z

println(y)

x / y
// you would get 0.5 if you assign the variables as Double x: Double = 10

// Constants

let myName = "Monica"
// myName - "john" will error out because constants are immutable

var amIHere: String? = "hello"
println(amIHere)

/************ Control Flow ***************/

// conditionals
// != means is NOT equal to
// conditionals run from top to bottom so the first true will run without regard to other conditions

var myAge = 22

if myAge < 21 {
    println ("you can't get in")
}else if myAge == 21 {
    println ("Free drinks")
}else if myAge > 21 && myAge < 25 {
    println ("You can drink, but you can't rent the car")
}else {
    println("You can party")
}

// Loops - ability to do something until reach an end point

// starting point 0, when i is less than 5, count i up 5 times
for var i = 0; i < 5; ++i {
    println ("Code is running")
}

// Interpolation
for var i = 0; i < 5; ++i {
    println ("Code is running \(i)")
}

for index in 1...5 {
    println(index)
}

var k = 1
while k < 10 {
    println("counting")
    ++k
}

var k = 10
while k > 1 {
    println("counting")
    --k
}








