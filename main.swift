// What is Foundation ?

import Foundation

// var n constants

var num = 10
// num = "HI";
print(num)

let pi = 3.14
// pi = 2; // error

// main.swift:11:1: error: cannot assign to value: 'pi' is a 'let' constant
//  8 | print(num);
//  9 |
// 10 | let pi = 3.14;
//    | `- note: change 'let' to 'var' to make it mutable
// 11 | pi = 2; // error
//    | `- error: cannot assign to value: 'pi' is a 'let' constant
// 12 | print(pi);

print(pi)

for number in 1..<5 {
  print(number)
}

let simpleString = "String"

let multilineString = """
  This is multiline string.
  """

print("Good day \(simpleString)")
print("Good day ", simpleString)

let lang: String = "Swift"
let version: Double = 5.6

let char: Character = "A"

let bool: Bool = true

print("Count", lang.count)

var numbers: [Int] = [1, 2, 3]
numbers.append(4)  // [1, 2, 3, 4]

numbers.remove(at: 0)  // [2, 3, 4]
numbers.insert(0, at: 0)  // [0, 2, 3, 4]

let firstNumber = numbers.first  // Optional(0)
let lastNumber = numbers.last  // Optional(4)

if let index = numbers.firstIndex(of: 3) {
  print(index)
  print(numbers[index])  // 3
  numbers[index] = 5  // [0, 2, 5, 4]
}

print(index)

var dict: [String: Int] = ["one": 1, "two": 2]
dict["three"] = 3  // ["one": 1, "two": 2, "three": 3]

print(dict)
// print(dict["one"]) // Optional(1)

for (key, value) in dict {
  print(key, "=", value)
}

// sets!
var unique: Set<Int> = Set([1, 2, 3])
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

if let newNum = Int(num22) {
  if newNum % 2 == 0 {
    print(newNum, "  is even")
  } else {
    print(newNum, "is odd")
  }
  print("Not an integer ", num22)
}

func printSqr() {
  guard let n = Int("nope") else {
    print("not a number ")
    return
  }

  print(n * n)
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

outer: for i in 1...3 {
  print("Outer i =", i)
  for j in 1...3 {
    if j == 2 {
      print("Found one!")
      continue outer
    }
    print(j)
  }
  // print(i)
  print("Done with inner loop.")  // will never be printed!
}

// defer expale!
// defer{
//     print("Defer block executed!")
// }

// print("End of program.")

// Functions!
func sayHello() {
  print("Hello from func")
}

sayHello()

func add(a: Int, b: Int) -> Int {
  return a + b
}

let ans = add(a: 10, b: 20)

print(ans)

// un- named parameters!

func greet(_ name: String, _ greeting: String) {
  print("\(greeting), \(name)!")
}

greet("John", "Welcome")

// default values!
func greet(name: String = "Guest") {
  print("Hello, \(name)! Welcome!")
}

greet()

// get min max!
func getMinMax(numbers: [Int]) -> (min: Int, max: Int) {
  return (numbers.min()!, numbers.max()!)
}

let result = getMinMax(numbers: [1, 2, 3])
print(result.min, result.max)

// reduce!
func average(numbers: [Double]) -> Double {
  return numbers.reduce(0, +) / Double(numbers.count)
}

print(average(numbers: [1.0, 2.0, 3.0]))

// pass by refrence!
func swapValues<T>(_ a: inout T, _ b: inout T) {
  let temp = a
  a = b
  b = temp
}

var a = 10
var b = 20

print(a, b)
swapValues(&a, &b)
print(a, b)

// clousers!
let greet22 = { (a: String) -> Void in
  print("Hello,", a)
  print("Hello World!")
}

greet22(":")

// ENUMS!
enum Direction {
  case north, south, east, west
}

let dir = Direction.north

print(dir)

enum Result {
  case success(Int)
  case failure(String)
}

let res = Result.success(100)

print(res)

// weekdays!
enum Weekday: Int, CaseIterable {
  case monday = 10
  case tuesday, wednesday, thursday, friday, saturday, sunday
}

for day in Weekday.allCases {
  print("\(day) = \(day.rawValue)")
}

struct Person {
  var firstName: String
  var lastName: String
}

var person = Person(firstName: "John", lastName: "Doe")
person.firstName = "Jane"
print(person.firstName, person.lastName)

class Teacher {
  var name: String
  var subject: String

  init(name: String, subject: String) {
    self.name = name
    self.subject = subject
  }

}

let teacher1 = Teacher(name: "Mr. Smith", subject: "Mathematics")
let teacher2 = teacher1

teacher2.name = "Mrs. Johnson"

print(teacher1.name, teacher2.name)
print(teacher1 === teacher2)  // true

class Counter {
  var count = 0

  // increament!
  func increment(by amount: Int) {
    count += amount
  }

  // decreament!
  func decrement(by amount: Int) {
    count -= amount
  }
}

let counter = Counter()
counter.increment(by: 10)
counter.decrement(by: 5)
print(counter.count)  // 5

struct Point {
  var x: Int
  var y: Int

  mutating func moveBy(x: Int, y: Int) {
    self.x += x
    self.y += y
  }
}

var point = Point(x: 0, y: 0)
point.moveBy(x: 10, y: -5)
print(point.x, point.y)  // Output: 10 -5

// Subscripts!
struct TimesTable {
  let multiplier: Int

  subscript(index: Int) -> Int {
    return multiplier * index
  }
}

let timesTable = TimesTable(multiplier: 3)
print(timesTable[5])  // Output: 15

struct WeekDays {
  private var days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]

  subscript(index: Int) -> String? {
    get {
      return days[index]
    }
    set(newValue) {
      if let newValue = newValue {
        days[index] = newValue
      }
    }
  }
}

var val = WeekDays()
val[0] = "Sunday"
print(val[0])

struct Matric {
  var rows: Int, columns: Int
  var grids: [Double]

  init(rows: Int, columns: Int) {
    self.rows = rows
    self.columns = columns
    grids = Array(repeating: 0.0, count: rows * columns)
  }

  subscript(row: Int, column: Int) -> Double {
    get {
      return grids[row * columns + column]
    }
    set(newValue) {
      grids[row * columns + column] = newValue
    }
  }

}

var matrix = Matric(rows: 2, columns: 2)

print(matrix.grids)

matrix[0, 0] = 10.0
matrix[1, 1] = 20.0

print(matrix.grids)

// INHERTICANCE!

class Animal {
  var name: String

  init(name: String) {
    self.name = name
  }

  func speak() {
    print("Animal speaks!")
  }
}

class Dog: Animal {

//   override func speak() {
//     super.speak()
//     print("Dog barks!")
//   }
}

// create obj!
let dog = Dog(name: "Buddy")
dog.speak()  