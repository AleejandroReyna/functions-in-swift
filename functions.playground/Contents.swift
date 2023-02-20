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
