////////////////////////////////////////////////////////////////
// MARK: - Type Annotations Experiment
////////////////////////////////////////////////////////////////
// Experiment: Create a constant with an explicit type of Float and a value of 4.
print("\n=== Type Annotations ===")

let explicitFloat: Float = 70
print(explicitFloat)


////////////////////////////////////////////////////////////////
// MARK: - Type Safety Experiment
////////////////////////////////////////////////////////////////
// Experiment: Try removing the conversion to String from the last line. What error do you get?
print("\n=== Type Safety ===")

let label = "The width is "
let width = 94
let widthLabel = label + String(width)
//let widthLabel2 = label + width
print("Binary operator '+' cannot be applied to operands of type 'String' and 'Int''")

/* note: overloads for '+' exist with these partially matching parameter lists: (Int, Int), (String, String)
let widthLabel2 = label + width // Compiler: Binary operator '+' cannot be applied to operands of type 'String' and 'Int' */


////////////////////////////////////////////////////////////////
// MARK: - String Interpolation Experiment
////////////////////////////////////////////////////////////////
// Experiment: Use \() to include a floating-point calculation in a string and to include someone’s name in a greeting.
print("\n=== String Interpolation ===")

let dollars: Float  = 5
let name = "Steve"
let greeting = "Hello, \(name). You have $\(dollars)"
print(greeting)
