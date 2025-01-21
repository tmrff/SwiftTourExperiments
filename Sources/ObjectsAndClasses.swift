////////////////////////////////////////////////////////////////
// MARK: - Class Properties and Methods Experiment
////////////////////////////////////////////////////////////////
// Experiment: Add a constant property with let, and add another method that takes an argument.
print("\n=== Class Properties and Methods ===")

class Shape {
    var numberOfSides = 0
    let isRound = false
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
    
    func greetingDescription(name: String) -> String {
        return "Hello, \(name). This shape has \(numberOfSides) sides."
    }
}

print(Shape().greetingDescription(name: "Steve"))


////////////////////////////////////////////////////////////////
// MARK: - Class Inheritance Experiment
////////////////////////////////////////////////////////////////
// Experiment: Make another subclass of NamedShape called Circle that takes a radius and a name as arguments to its initializer. Implement an area() and a simpleDescription() method on the Circle class.
print("\n=== Class Inheritance ===")

class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

class Circle: NamedShape {
    var radius: Double
    
    init(name: String, radius: Double) {
        self.radius = radius
        super.init(name: name)
    }
    
    func area() -> Double {
        return .pi * radius * radius
    }
    
    override func simpleDescription() -> String {
        return "A shape with \(area()) area."
    }
}

print(Circle(name: "MyCircle", radius: 5).simpleDescription())
