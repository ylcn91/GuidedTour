//: ## Control Flow
//:
//: Use `if` and `switch` to make conditionals, and use `for`-`in`, `while`, and `repeat`-`while` to make loops. Parentheses around the condition or loop variable are optional. Braces around the body are required.
//:
let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(teamScore)

// Experiment

let finalScore = [61, 34, 91, 22, 15]
var finalGrade = 0

for score in finalScore {
    if score < 40 { // condition - boolean - if score less than 40
        finalGrade -= 2
    }else { // cond2 - boolean - if score more than 40
        finalGrade += 5
    }
}
print("Final Grade = \(finalGrade)")
//: In an `if` statement, the conditional must be a Boolean expression—this means that code such as `if score { ... }` is an error, not an implicit comparison to zero.
//:
//: You can use `if` and `let` together to work with values that might be missing. These values are represented as optionals. An optional value either contains a value or contains `nil` to indicate that a value is missing. Write a question mark (`?`) after the type of a value to mark the value as optional.
//:
var optionalString: String? = nil
print(optionalString == nil)

// Experiment with optionals
var optionalSurname: String? = nil
print(optionalSurname == nil)

optionalSurname = "Doksanbir"
print(optionalSurname != nil)


//if optional name changes to nil -> greeting is skipped
var optionalName: String? = "John Appleseed"
var greeting = "Hello!"

if let name = optionalName {
    greeting = "Hello, \(name)"
}

// Experiment with optionals V2

//var optionalTeam : Int? = nil
var optionalTeam : Int? = 61

var storyTable = "win-win!"

if let team = optionalTeam {
    storyTable = "win-win, \(team)"
}
//: - Experiment:
//: Change `optionalName` to `nil`. What greeting do you get? Add an `else` clause that sets a different greeting if `optionalName` is `nil`.
//:
//: If the optional value is `nil`, the conditional is `false` and the code in braces is skipped. Otherwise, the optional value is unwrapped and assigned to the constant after `let`, which makes the unwrapped value available inside the block of code.
//:
//: Another way to handle optional values is to provide a default value using the `??` operator. If the optional value is missing, the default value is used instead.
//:
let nickName: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickName ?? fullName)"

// Try to check, if the optional value exist- what happens - if nil, it is skipped to default name which is not optional.
let fakeName : String? = "Doksanbir"
//default value
let myName : String = "Yalcin"
let secondName : String? = "Nil"
//let myGreeting = "Hi, \(fakeName ?? secondName)" - Error
//String interpolation produces a debug description for an optional value; did you mean to make this explicit? - "Provide a default value to avoid this warning"

let myGreeting = "Hi, \(fakeName ?? myName)"
//: Switches support any kind of data and a wide variety of comparison operations—they aren’t limited to integers and tests for equality.
//:
let vegetable = "red pepper"
switch vegetable {
    case "celery":
        print("Add some raisins and make ants on a log.")
    case "cucumber", "watercress":
        print("That would make a good tea sandwich.")
    case let x where x.hasSuffix("pepper"):
        print("Is it a spicy \(x)?")
    
    // Experiment - // Switch must be exhaustive - Do you want to add a default clause?
    
     default: // Experiment 2 - // just removing print sections
    // Error : 'default' label in a 'switch' should have at least one executable statement -> Insert ' break'
      print("Everything tastes good in soup.")
    
}

//: - Experiment:
//: Try removing the default case. What error do you get?
//:
//: Notice how `let` can be used in a pattern to assign the value that matched the pattern to a constant.
//:
//: After executing the code inside the switch case that matched, the program exits from the switch statement. Execution doesn’t continue to the next case, so there is no need to explicitly break out of the switch at the end of each case’s code.
//:
//: You use `for`-`in` to iterate over items in a dictionary by providing a pair of names to use for each key-value pair. Dictionaries are an unordered collection, so their keys and values are iterated over in an arbitrary order.
//:
let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]

// Define dictionary - pair names - String and Int
var largest = 0 // value to check for largest
var kindOf = "" // Experiment

for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number // asign to largest number
            kindOf = kind // -> experiment
        }
    }
}
print(largest)
print(kindOf)


//: - Experiment:
//: Add another variable to keep track of which kind of number was the largest, as well as what that largest number was.
//:
//: Use `while` to repeat a block of code until a condition changes. The condition of a loop can be at the end instead, ensuring that the loop is run at least once.
//:
var n = 2
while n < 100 {
    n *= 2 //64*2 -> condition change in n=64
}
print(n)

var m = 2
repeat {
    m *= 2
} while m < 100
print(m)

//: You can keep an index in a loop by using `..<` to make a range of indexes.
//:
var total = 0
for i in 0..<4 {
    total += i
}
print(total)

var totalValue = 0
for i in 0..<5 {
    totalValue += i
    print(i)
}
print(totalValue)

var totalLast = 0
for i in 0...7 {
    totalLast += i
}
print(totalLast)

for n in 1...5 {
    print(n)
}

//Experiments

let names = ["Arthur", "Zaphod", "Trillian", "Ford", "Marvin"]

for name in names {
    print(name)
}

let numbers = [1, 2, 3, 4, 5]
var sum = 0

for i in numbers {
    sum += i
}
print(sum)


// Output: 1 2 3 4 5
//for item in items {
    // Do this
//}


func sum(_ numbers:[Int]) -> Int
{
    var sum = 0
    
    for n in numbers {
        sum += n
    }
    
    return sum
}

let result = sum([23, 11, 9, 3, 24, 77])
print(result) // Output: 147

for i in 0..<numbers.count {
    sum += numbers[i]
}

let xyz = "x"..."z"
print(xyz.contains("y"))

//: Use `..<` to make a range that omits its upper value, and use `...` to make a range that includes both values.
//:

//: [Previous](@previous) | [Next](@next)
