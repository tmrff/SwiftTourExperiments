////////////////////////////////////////////////////////////////
// MARK: - Enums with Raw Values Experiment
////////////////////////////////////////////////////////////////
// Experiment: Write a function that compares two Rank values by comparing their raw values.
print("\n=== Enums with Raw Values ===")

enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    
    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
    
    func greaterThan(_ other: Rank) -> Bool {
        return self.rawValue > other.rawValue
    }
}

print(Rank.king.greaterThan(Rank.two))


////////////////////////////////////////////////////////////////
// MARK: - Methods in Enums Experiment
////////////////////////////////////////////////////////////////
// Experiment: Add a color() method to Suit that returns “black” for spades and clubs, and returns “red” for hearts and diamonds.
print("\n=== Methods in Enums ===")

enum Suit {
    case spades, hearts, diamonds, clubs
    
    func simpleDescription() -> String {
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
        }
    }
    
    func color() -> String {
        switch self {
        case .spades, .clubs:
            return "black"
        case .hearts, .diamonds:
            return "red"
        }
    }
}

let suits = [Suit.spades, Suit.hearts, Suit.diamonds, .clubs]
for suit in suits {
    print("\(suit) is \(suit.color())")
}


////////////////////////////////////////////////////////////////
// MARK: - Enums with Associated Values Experiment
////////////////////////////////////////////////////////////////
// Experiment: Add a third case to ServerResponse and to the switch.
print("\n=== Enums with Associated Values ===")

enum ServerResponse {
    case result(String, String)
    case failure(String)
    case warning(String, String, String)
}

let success = ServerResponse.result("6:00 am", "8:09 pm")
let failure = ServerResponse.failure("Out of cheese.")
let warning = ServerResponse.warning("Data may be stale", "6:00 am", "8:09 pm")

switch success {
case let .result(sunrise, sunset):
    print("Sunrise is at \(sunrise) and sunset is at \(sunset).")
case let .failure(message):
    print("Failure...  \(message)")
case let .warning(message, sunrise, sunset):
    print("Warning: \(message)")
    print("Sunrise is at \(sunrise) and sunset is at \(sunset).")
}


////////////////////////////////////////////////////////////////
// MARK: - Combining Types Experiment
////////////////////////////////////////////////////////////////
// Experiment: Write a function that returns an array containing a full deck of cards, with one card of each combination of rank and suit.
print("\n=== Combining Types ===")

struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}
let threeOfSpades = Card(rank: .three, suit: .spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()

func deckOfCards() -> [Card] {
    var deck = [Card]()
    
    for suit in [Suit.spades, .hearts, .diamonds, .clubs] {
        for rankValue in 1...13 {
            if let rank = Rank(rawValue: rankValue) {
                let card = Card(rank: rank, suit: suit)
                deck.append(card)
            }
        }
    }
    
    return deck
}

let deck = deckOfCards()
for card in deck {
    print(card.simpleDescription())
}
