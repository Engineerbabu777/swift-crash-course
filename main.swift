

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


