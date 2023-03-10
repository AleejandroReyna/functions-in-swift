// Simple function

import Foundation

func greeting() {
    print("Hello World!")
}

greeting()


// Function with params

func greetingSomeone(name: String) {
        print("Hello \(name)!")
}

greetingSomeone(name: "Alejandro")


// Function with value of return

func getGreeting(greeting: String, name: String) -> String {
    return "\(greeting) \(name)!"
}

print(getGreeting(greeting: "Hello", name: "Strange"))


// Break function by conditionals and return

func isAnAdult(age: Int) -> Bool {
    if age < 18 {
        return false
    }
    
    return true
}

print(isAnAdult(age: 17))

// Use a tuple as a return value

func getMinAndMax(array:[Int]) -> (min: Int, max: Int) {
    var min : Int = array[0]
    var max : Int = array[0]
    
    for value in array {
        if value < min {
            min = value
        }
        
        if value > max {
            max = value
        }
    }
    
    return (min, max)
}

print(getMinAndMax(array: [1, 20, 3, 45, 10]))

// Optional return

func getMaxItem(array:[Int]) -> Int? {
    if array.isEmpty {
        return nil
    }
    
    var max : Int = array[0]
    
    for value in array {
        if(value > max) {
            max = value
        }
    }
    
    return max
}

print(getMaxItem(array: []))


// params with aliases

func square(n numberOfGetItsSquare : Int ) -> Int {
    return numberOfGetItsSquare * numberOfGetItsSquare
}

print(square(n: 2))


// not a tag for param

func getCapitalizedName(_ name : NSString) -> String {
    return name.capitalized
}

print(getCapitalizedName("alEjaNdrO"))


// function with default params

func checkMyProgress(_ progress : Int = 0) {
    print("Your progress is \(progress)%")
}

checkMyProgress()
checkMyProgress(10)


// function with variadic params

func getMean(_ numbers : Double...) -> Double {
    var total : Double = 0
    for n in numbers {
        total += n
    }
    return total / Double(numbers.count)
}

print(getMean(1, 3, 5, 6, 70))


// Modify variables through functions

func plusANumberToAnotherNumber(_ firstNumber : inout Int, _ secondNumber : Int) {
    firstNumber = firstNumber + secondNumber
}

var numberToModify : Int = 5
plusANumberToAnotherNumber(&numberToModify, numberToModify)
print(numberToModify)



