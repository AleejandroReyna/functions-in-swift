// Simple function

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
