//: ## Functions and Closures
//:
//: Use `func` to declare a function. Call a function by following its name with a list of arguments in parentheses. Use `->` to separate the parameter names and types from the function’s return type.
//:
func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)."
}
greet(person: "Bob", day: "Tuesday")

//Experiment
func sayHi(person: String, todaySpecial: String) -> String {

    return "Hello \(person), today we have \(todaySpecial)"
}
sayHi(person: "doksanbir", todaySpecial: "Pizza")

//Experiment

func multiply(number1: Int, number2: Int) -> Int {
    
    return number1 * number2
}
multiply(number1: 5, number2: 9)

//Experiment - I'll check the Complexity and Big-O Notation for performance
//Use REPL - Read Eval Print Loop for check the functions - terminal.app -> swift
//Welcome to Apple Swift version 4.1.2 (swiftlang-902.0.54 clang-902.0.39.2). Type :help for assistance.
//1>
// recursive factorial
func factorial(number: Int) -> Int {
    
    if number <= 1 {
     return  1
    } else {
        return number * factorial(number: number - 1)
    }
 }

print(factorial(number: 5))
print(factorial(number: 0))
print(factorial(number: 1))
print(factorial(number: 6))
print(factorial(number: 2))

// Experiment for factorial - iterative
func iterativeFactorial (number: Int) -> Int {
    
    var answer = 1
    
    if number <= 1 {
        return 1
    } else {
    
    for loop in 1...number {
        answer = answer * loop
    }
    }
    return answer
    
}
iterativeFactorial(number: 5)
iterativeFactorial(number: 1)
iterativeFactorial(number: 2)
iterativeFactorial(number: 3)
iterativeFactorial(number: 0)
iterativeFactorial(number: 6)

// Create a function named add that takes two parameters of type Double and returns the sum of the two numbers
func add(number1: Double, number2: Double) -> Double {
    return number1 + number2
}
print(add(number1: 60.5, number2: 30.5)) //test

// Create a function "isOdd" - bool - "isEven -> number % 2 == 0 - true / false"
func isOdd(number: Int) -> Bool {
    if number % 2 == 1 {
        return true
    }else {
        return false
    }
}

print(isOdd(number: 3)) // true
print(isOdd(number: 4))

// Output - Repl -  38> isOdd(number: 1)
// $R0: Bool = true
// 39> isOdd(number: 2)
// $R1: Bool = false

// Create function that calcualtes the square of a number
func square(number : Int) -> Int {
    return number * number
}
square(number: 5) // $R2: Int = 25
print(square(number: 8)) // 64

//Write a function named min2 that takes two Int values, a and b, and returns the smallest one. Use _ to ignore the external parameter names for both a and b.
func min2(_ a: Int , _ b: Int) -> Int {
    if a > b {
        return b
    }else {
        return a
    }
}
min2(1, 2)
min2(5, 10)

// Write a function that takes an Int and returns it’s last digit. Name the function lastDigit. Use _ to ignore the external parameter name.
func lastDigit(_ num : Int) -> Int {
    return num % 10
}
lastDigit(15) // 5
lastDigit(1214121902294774)
// $R10: Int = 4

//Write a function named first that takes an Int named N and returns an array with the first N numbers starting from 1. Use _ to ignore the external parameter name.
func first(_ N : Int) -> [Int] {
    var numbers:[Int] = []
    for i in 1...N {
        numbers.append(i)
    }
    return numbers
}
// use repl for expected output - tests
first(5)
first(8)
first(3)

//Implement the following functions. The divides function returns true if a is divisible by b and false otherwise. The countDivisors function should use the divides function to return the number of divisors of number. The isPrime function should use the countDivisors function to determine if number is prime.
// Experiment functions in funciton

func devides(_ num1 : Int, _ num2: Int) -> Bool {
    return num1 % num2 == 0
}

devides(3,2) //$R12: Bool = false
devides(2,2) //$R13: Bool = true
devides(5,2) //$R14: Bool = false
devides(10, 5) // -> true

func countDevides(_ number: Int) -> Int {
    var count = 0
    for i in 1...number{
        if devides(number, i) {
            count += 1
        }
    }
    return count
}
countDevides(12) // output 6
countDevides(49) // output 3
countDevides(61) // output 2
countDevides(6) // output 4

func isPrime(_ number: Int) -> Bool {
    return countDevides(number) == 2
    
}
isPrime(4) // false
isPrime(5) //true
isPrime(61) // true
isPrime(91) // false
isPrime(13) // true

//Using isPrime write a function named printFirstPrimes that takes a parameter named count of type Int that prints the first count prime numbers.

func printFirstPrimes(_ count: Int) {
    
    var expected = 2 // implement first
    var started  = 0 //  counter - for count
    
    while started < count { // if counter > given count - done with while statement
        if (isPrime(expected)){
            print(expected)
            started += 1
        }
        expected += 1
    }
}
// Tests - Done - 18 min :)
printFirstPrimes(3)
printFirstPrimes(5)
printFirstPrimes(10)

// Implement a function named repeatPrint that takes a string message and a integer count as parameters. The function should print the message count times and then print a newline.

// Experiment - check the print func by clicking with option
func repeatPrint(message: String, count: Int) {
    
    for _ in 1...count {
        print(message, terminator: "")
    }
    print("")
}

repeatPrint(message: "dk", count: 3)
repeatPrint(message: "x", count: 10)

//  Write a function named reverse that takes an array of integers named numbers as a parameter. The function should return an array with the numbers from numbers in reverse order.

//---> https://developer.apple.com/documentation/swift/array/2943836-reverse --> check

func reversed (_ num: [Int]) -> [Int] {
    
    var reversedOrder: [Int] = []
    
    for i in 0..<num.count {
        reversedOrder.append(num[(num.count-1) - i])
    }
    return reversedOrder
}

reversed([1,2,3])
reversed([11,23,42,17,61,91,34,61])


// Write a function named sum that takes an array of integers and returns their sum.

func sum (_ num: [Int]) -> Int {
    var total = 0
    
    for numbers in num {
        total += numbers
    }
    return total
}

sum([1,2,3]) //$R4: Int = 6
sum([1,2,3,4,5,6,7]) // $R5: Int = 28
print(sum([1,1,1,1,1])) // ->5

//Write a function named parse(digit:) that takes a string with one character as parameter. The function should return -1 if the input is not a digit character and the digit otherwise.



func parse (digit: String) -> Int {
    
    let digits = "0123456789"
    var result = 0
    
    for character in digits {
        var d = "\(character)"
        
        if d == digit {
            return result
        }
        result += 1
    }
    return -1
}

// 7.12 Correct Pairs
//Write a function named verify that takes a string expression of open and closed parentheses ((, )) and returnstrue if they are correctly paired and false otherwise.
func verify(expression: String) -> Bool {
    
    var openP = 0
    var closedP = 0
    
    for char in expression {
        
        var result = "\(char)"
        
        if result == "(" {
            openP += 1
        }else {
            closedP += 1
        }
        
        if closedP > openP {
            return false
        }
        
    }
    return openP == closedP
}

// 7.13 Mario

func levelCost(heights: [Int], maxJump: Int) -> Int {
    var totalEnergy = 0
    var lastHeight = 0
    
    for height in heights {
        if lastHeight == 0 {
            lastHeight = height
        } else {
            var jumpHeight = lastHeight - height
            if jumpHeight < 0 {
                jumpHeight = -jumpHeight
            }
            
            if jumpHeight > maxJump {
                return -1
            }
            
            if jumpHeight == 0 {
                totalEnergy += 1
            } else {
                totalEnergy += 2 * jumpHeight
            }
            
            lastHeight = height
        }
    }
    
    return totalEnergy
}






//: - Experiment:
//: Remove the `day` parameter. Add a parameter to include today’s lunch special in the greeting.
//:
//: By default, functions use their parameter names as labels for their arguments. Write a custom argument label before the parameter name, or write `_` to use no argument label.
//:

//: - Experiment:
//: Remove the `day` parameter. Add a parameter to include today’s lunch special in the greeting.
//:
//: By default, functions use their parameter names as labels for their arguments. Write a custom argument label before the parameter name, or write `_` to use no argument label.
//:
func greet(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)."
}
greet("John", on: "Wednesday")


//: Use a tuple to make a compound value—for example, to return multiple values from a function. The elements of a tuple can be referred to either by name or by number.
//:
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0

    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }

    return (min, max, sum)
}
let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
print(statistics.sum)
print(statistics.2)

//: Functions can be nested. Nested functions have access to variables that were declared in the outer function. You can use nested functions to organize the code in a function that is long or complex.
//:
func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
returnFifteen()

//: Functions are a first-class type. This means that a function can return another function as its value.
//:
func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7)

//: A function can take another function as one of its arguments.
//:
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 7, 12]
hasAnyMatches(list: numbers, condition: lessThanTen)

//: Functions are actually a special case of closures: blocks of code that can be called later. The code in a closure has access to things like variables and functions that were available in the scope where the closure was created, even if the closure is in a different scope when it is executed—you saw an example of this already with nested functions. You can write a closure without a name by surrounding code with braces (`{}`). Use `in` to separate the arguments and return type from the body.
//:
numbers.map({ (number: Int) -> Int in
    let result = 3 * number
    return result
})

//: - Experiment:
//: Rewrite the closure to return zero for all odd numbers.
//:
//: You have several options for writing closures more concisely. When a closure’s type is already known, such as the callback for a delegate, you can omit the type of its parameters, its return type, or both. Single statement closures implicitly return the value of their only statement.
//:
let mappedNumbers = numbers.map({ number in 3 * number })
print(mappedNumbers)

//: You can refer to parameters by number instead of by name—this approach is especially useful in very short closures. A closure passed as the last argument to a function can appear immediately after the parentheses. When a closure is the only argument to a function, you can omit the parentheses entirely.
//:
let sortedNumbers = numbers.sorted { $0 > $1 }
print(sortedNumbers)



//: [Previous](@previous) | [Next](@next)
