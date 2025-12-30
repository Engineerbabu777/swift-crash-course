

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
