

// What is Foundation ?

import Foundation

// var n constants

var num = 10;
// num = "HI";
print(num);

let pi = 3.14;
// pi = 2; // error

// main.swift:11:1: error: cannot assign to value: 'pi' is a 'let' constant
//  8 | print(num);
//  9 | 
// 10 | let pi = 3.14;
//    | `- note: change 'let' to 'var' to make it mutable
// 11 | pi = 2; // error
//    | `- error: cannot assign to value: 'pi' is a 'let' constant
// 12 | print(pi);

print(pi);










for number in 1..<5 {
	print(number)
}



let simpleString = "String"

let multilineString = """
This is multiline string.
"""







print("Good day \(simpleString)")
print("Good day ",simpleString)


let lang : String = "Swift"
let version : Double = 5.6

let char : Character = "A"

let bool : Bool = true

print("Count", lang.count)






import Foundation

var numbers: [Int] = [1, 2, 3]
numbers.append(4) // [1, 2, 3, 4]

numbers.remove(at: 0) // [2, 3, 4]
numbers.insert(0, at: 0) // [0, 2, 3, 4]

let firstNumber = numbers.first // Optional(0)
let lastNumber = numbers.last // Optional(4)

if let index = numbers.firstIndex(of: 3) {
    print(index)
    print(numbers[index]) // 3
	numbers[index] = 5 // [0, 2, 5, 4]
}

print(index)


var dict: [String: Int] = ["one": 1, "two": 2]
dict["three"] = 3 // ["one": 1, "two": 2, "three": 3]

print(dict)
// print(dict["one"]) // Optional(1)

for (key,value) in dict{
	print(key,"=",value)
}


// sets!
var unique : Set<Int> = Set([1,2,3])
unique.insert(4)
unique.remove(1)
print(unique.contains(11))



// control flow!
let temp = 22

if temp > 30 {
	print("It's hot!")
} else if temp < 10 {
	print("It's cold!")
} else {
	print("The weather is nice.")
}

let num22 = "44"

if let newNum = Int(num22){
	if newNum % 2 == 0 {
		print(newNum,"  is even")
	}else{
		print(newNum,"is odd")
	}
	print("Not an integer ", num22)
}

func printSqr(){
    guard let n = Int("nope") else{
        print("not a number ")
        return
    }

    print(n*n)
}

printSqr()

let score = 75

switch score {
case 0...50:
    print("You failed!")
case 51...80:
    print("You passed!")
default:
    print("Invalid score!")
}

let scoreTuple = (score: 85, bonusPoints: 10)

switch scoreTuple {
case (_, 5):
    print("No points added.")
case (let s, _):
    print("Added \(s) points.")

}


let animals = ["dog", "cat", "bird"]
for animal in animals {
    print(animal)
}

// even numbers from 1 to 10
for i in stride(from: 1, through: 10, by: 3) {
    print(i)
}

let names = ["Alice", "Bob", "Charlie"]
for (index, name) in names.enumerated() {
    print("\(name) is at index \(index)")
}

// while and reap white!
while true {
    print("Hello World!")
    break
}

repeat {
    print("Hello World!")
} while false



outer: for i in 1...3{
       print("Outer i =", i)
    for j in 1...3{
        if j == 2 { 
            print("Found one!")
            continue outer
             }
        print(j)
    }
    // print(i)
    print("Done with inner loop.") // will never be printed!
}