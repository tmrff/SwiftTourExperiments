////////////////////////////////////////////////////////////////
// MARK: - Functions and Parameters Experiment
////////////////////////////////////////////////////////////////
// Experiment: Remove the day parameter. Add a parameter to include today's lunch special in the greeting.
print("\n=== Functions and Parameters ===")

func greet(person: String, special: String) -> String {
    return "Hello \(person), today's lunch special is \(special)."
}
let greeting = greet(person: "Bob", special: "Fish & Chips")

print(greeting)


////////////////////////////////////////////////////////////////
// MARK: - Closures
////////////////////////////////////////////////////////////////
// Experiment: Rewrite the closure to return zero for all odd numbers.
print("\n=== Closures ===")

var numbers = [20, 19, 7, 12]
let oddNumbersAreZero = numbers.map({ (number: Int) -> Int in
    if number % 2 == 0 {
        return number
    }
    return 0
})

print(oddNumbersAreZero)
