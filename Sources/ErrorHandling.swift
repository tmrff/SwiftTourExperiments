////////////////////////////////////////////////////////////////
// MARK: - Throwing Errors Experiment
////////////////////////////////////////////////////////////////
// Experiment: Change the printer name to "Never Has Toner", so that the send(job:toPrinter:) function throws an error.
print("\n=== Throwing Errors  ===")

enum PrinterError: Error {
    case outOfPaper
    case noToner
    case onFire
}

func send(job: Int, toPrinter printerName: String) throws -> String {
    if printerName == "Never Has Toner" {
        throw PrinterError.noToner
    }
    return "Job sent"
}

do {
    let printerResponse = try send(job: 1040, toPrinter: "Never Has Toner")
    print(printerResponse)
} catch {
    print(error)
}


////////////////////////////////////////////////////////////////
// MARK: - Error Handling Patterns Experiment
////////////////////////////////////////////////////////////////
// Experiment: Add code to throw an error inside the do block. What kind of error do you need to throw so that the error is handled by the first catch block? What about the second and third blocks?
print("\n=== Error Handling Patterns  ===")

do {
//    let printerResponse = try send(job: 1440, toPrinter: "Gutenberg")
//    print(printerResponse)
    throw PrinterError.onFire
} catch PrinterError.onFire {
    print("I'll just put this over here, with the rest of the fire.")
} catch let printerError as PrinterError {
    print("Printer error: \(printerError).")
} catch {
    print(error)
}
