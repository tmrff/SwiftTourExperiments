////////////////////////////////////////////////////////////////
// MARK: - Optional Binding Experiment
////////////////////////////////////////////////////////////////
/* Experiment: Change optionalName to nil. What greeting do you get?
 Add an else clause that sets a different greeting if optionalName is nil. */
print("\n=== Optional Binding ===")

func greet(optionalName: String?) -> String {
    if let name = optionalName {
        return "Hello, \(name)"
    } else {
        return "Hello there"
    }
}

let testNames: [String?] = [nil, "Alice", "", "   ", nil]
for name in testNames {
    print("Greeting for '\(String(describing: name))': \(greet(optionalName: name))")
}


////////////////////////////////////////////////////////////////
// MARK: - Switch Statement Experiment
////////////////////////////////////////////////////////////////
// Experiment: Try removing the default case. What error do you get?
print("\n=== Switch Statement ===")

let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}

/* error: switch must be exhaustive
 note: add a default clause */

print("error: switch must be exhaustive")
print("note: add a default clause")


////////////////////////////////////////////////////////////////
// MARK: - Dictionary Iteration Experiment
////////////////////////////////////////////////////////////////
// Experiment: Replace the _ with a variable name, and keep track of which kind of number was the largest.
print("\n=== Dictionary Iteration ===")

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
var largestKind = ""
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
            largestKind = kind
        }
    }
}

print(largest)
print(largestKind)


////////////////////////////////////////////////////////////////
// MARK: - Loop Behavior Experiment
////////////////////////////////////////////////////////////////
// Experiment: Change the condition from m < 100 to m < 0 to see how while and repeat-while behave differently when the loop condition is already false.
print("\n=== Loop Behavior ===")

var n = 2
while n < 0 {
    n *= 2
}
print(n)

var m = 2
repeat {
    m *= 2
} while m < 0
print(m)
