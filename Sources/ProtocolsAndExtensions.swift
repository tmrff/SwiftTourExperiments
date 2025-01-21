////////////////////////////////////////////////////////////////
// MARK: - Protocols with Classes and Structs Experiment
////////////////////////////////////////////////////////////////
// Experiment: Add another requirement to ExampleProtocol. What changes do you need to make to SimpleClass and SimpleStructure so that they still conform to the protocol?
print("\n=== Protocols with Classes and Structs ===")

protocol ExampleProtocol {
    var simpleDescription: String { get }
    func selfDestruct() -> String
    mutating func adjust()
}

class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class."
    var anotherProperty: Int = 69105
    func adjust() {
        simpleDescription += "  Now 100% adjusted."
    }
    func selfDestruct() -> String {
        return "Self destructed."
    }
}
var a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription

struct SimpleStructure: ExampleProtocol {
    var simpleDescription: String = "A simple structure"
    mutating func adjust() {
        simpleDescription += " (adjusted)"
    }
    func selfDestruct() -> String {
        return "Self destructed."
    }
}
var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription
print(bDescription)
print(a.selfDestruct())


/*
 Added: `func selfDestruct() -> String` to ExampleProtocol
 To compile I had to implement this function on SimpleClass and SimpleStructure.
 */


////////////////////////////////////////////////////////////////
// MARK: - Extensions Experiment
////////////////////////////////////////////////////////////////
// Experiment: Write an extension for the Double type that adds an absoluteValue property.
print("\n=== Extensions ===")

extension Double {
    var absoluteValue: Double {
        if self < 0 {
            return -self
        } else {
            return self
        }
    }
}

print(Double(-10).absoluteValue)
