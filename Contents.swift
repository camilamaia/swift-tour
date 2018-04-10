// ** SIMPLE VALUES ** //

// Constants
let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 4.0

// Type Conversion
let age = 10
let weight : Float = 50.532
Float(age) * weight
let weightString = "50.532"
Float(age) * Float(weightString)!


let label = "The width is "
let width = 94
let widthLabel = label + String(width)

// Interpolation
let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."


let name = "Camila"
let birthYear = 1991.0
let currentYear = 2017.0
let greeting1 = "Hi \(name), \(currentYear - birthYear)"


let quotation = """
I said "I have \(apples) apples."
And then I said "I have \(apples + oranges) pieces of fruit."
"""

// Arrays
var shoppingList = ["catfish", "water", "tulips", "blue paint"]
shoppingList[1] = "bottle of water"
print(shoppingList)

// Empty Arrays
shoppingList = []
let emptyArray = [String]()

// Explicit Arrays
var explicitArray : [Int] = [2, 4, 6]
explicitArray.append(8)
explicitArray.count

// Operatiions with Arrays
var emojis = ["😎", "🤯", "😤"]
emojis.insert("😂", at: 1)
emojis.remove(at: 3)
print(emojis)

emojis.contains("🤯")
emojis.contains("😤")

emojis.index(of: "😎")
emojis.index(of: "😤")

// Dictionaries
var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]
occupations["Jayne"] = "Public Relations"
print(occupations)

// Empty Dictionaries
occupations = [:]
let emptyDictionary = [String: Float]()

// ** CONTROL FLOWS ** //

// For loops
let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(teamScore)


var optionalString: String? = "Hello"
print(optionalString == nil)

var optionalName: String? = "John Appleseed"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}
else {
    greeting = "Hello, stranger"
}


let nickName: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickName ?? fullName)"

// Switches
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

let waterJug = 1999.999
switch waterJug {
case 0..<1000:
    print("Less than a liter of water")
case 1000..<2000:
    print("More than 1 liter and less than 2 liters of water")
case 2000..<3000:
    print("More than 2 liters and less than 3 liters of water")
default:
    print("Everything tastes good in soup.")
}


let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
    print(kind)
}
print(largest)

for _ in 2_000_150...2_000_160 {
    print("yo!")
}

// While Loops
let thereIsCoffe = false
repeat {
    print("give me coffe")
} while thereIsCoffe

while thereIsCoffe {
    print("give me coffe")
}

var n = 2
while n < 100 {
    n *= 2
}
print(n)

var m = 2
repeat {
    m *= 2
} while m < 100
print(m)

var total = 0
for i in 0..<4 {
    total += i
}
print(total)

// ** FUNCTIONS AND CLOSURES ** //

func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)."
}
greet(person: "Bob", day: "Tuesday")


func greetWithLunchSpecial(person: String, lunchSpecial: String) -> String {
    return "Hello \(person), today's lunch special is \(lunchSpecial)!"
}
greetWithLunchSpecial(person: "Bob", lunchSpecial: "Burger")


func requiredOranges(litersOfJuice : Double) -> Float {
    return Float(litersOfJuice*20)
}

requiredOranges(litersOfJuice : 3550)


func greet(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)."
}
greet("John", on: "Wednesday")

// Nested Functions

func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
returnFifteen()

// Functions are a first-class type - they can return another function as its value.
func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7)

// Function as argument
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 7, 12]
hasAnyMatches(list: numbers, condition: lessThanTen)

// Functions are a special case of closures: blocks of code that can be called later.
numbers.map({ (number: Int) -> Int in
    let result = 3 * number
    return result
})

numbers.map({ (number: Int) -> Int in
    if number % 2 == 0 {
        return 3 * number
    } else {
        return 0
    }
})

// Omit the type of parameters, return, or both
let mappedNumbers = numbers.map({ number in 3 * number })
print(mappedNumbers)

// Refer to parameters by number instead of by name
let sortedNumbers = numbers.sorted { $0 > $1 }
print(sortedNumbers)


// ** TUPLES ** //

var pedro = (25, "blond", true)

// Tuples with identifiers
pedro = (age: 25, hair: "blond", male: true)

// Explicit Tuples
var clara : (age: Int, hair: String, male: Bool) = (2, "blond", false)

// Tuples and function
func personInfo(tuple: (age: Int, hair: String, male: Bool)){
    print("hair: \(tuple.hair), age: \(tuple.age), male: \(tuple.male)")
}

personInfo(tuple: clara)


func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0

    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }

    return (min, max, sum)
}
let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
print(statistics.sum)
print(statistics.2)


// ** OPTIONALS ** //

var childName : String? = "Enzo"

// Exclamation mark to unwrap an optional
print(childName!)

// Question Mark to check if optional has a value
childName?.uppercased()

// Optional Binding
if let name = childName {
    print(name.uppercased())
} else {
    print("Give a name to your child, man")
}

// ** CLASSES ** //

class Table {
    var color : String = "Black"
    var width : Int = 500
    var length : Int = 1000
    var area : Int {
        return width*length
    }
}

var beedroomTable = Table()
beedroomTable.width = 650
beedroomTable.length = 800
beedroomTable.color = "White"
beedroomTable.area

var liveroomTable = Table()
liveroomTable.width = 1000
liveroomTable.length = 3000
liveroomTable.color = "Brown"
liveroomTable.area

let tables : [Table] = [beedroomTable, liveroomTable]


class Shape {
    let name : String
    var numberOfSides = 0

    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }

    func formatOf(my object: String) -> String {
        return "My \(object)'s shape is: \(name)."
    }

    // self is used to distinguish the name property from the name argument to the initializer.
    init(_ name: String, _ numberOfSides: Int) {
        self.name = name
        self.numberOfSides = numberOfSides
    }

    init(_ name: String) {
        self.name = name
    }

    /* Use deinit to create a deinitializer if you need to
    perform some cleanup before the object is deallocated. */
    deinit {}
}

var squareShape = Shape("square", 4)
print(squareShape.simpleDescription())
print(squareShape.formatOf(my: "head"))

// Inheritance
class Square: Shape {
    var sideLength: Double

    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name)
        numberOfSides = 4
    }

    func area() -> Double {
        return sideLength * sideLength
    }

    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
}

let square = Square(sideLength: 5.2, name: "square")
square.area()
square.simpleDescription()
square.formatOf(my: "table")

class Circle: Shape {
    var radius: Double

    init(_ name: String, _ radius: Double) {
        self.radius = radius
        super.init(name)
    }

    func area() -> Double {
        return Double.pi * radius * radius
    }

    override func simpleDescription() -> String {
        return "A circle with radius: \(radius)"
    }
}

let circle = Circle("circle", 2)
circle.area()
circle.simpleDescription()
circle.formatOf(my: "pizza")

/* In addition to simple properties that are stored, properties can have a
getter and a setter. */

class EquilateralTriangle: Shape {
    var sideLength: Double = 0.0

    init(_ name: String, sideLength: Double) {
        self.sideLength = sideLength
        super.init(name)
        numberOfSides = 3
    }

    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
    }

    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)."
    }
}
var triangle = EquilateralTriangle("a triangle", sideLength: 3.1)
print(triangle.perimeter)
triangle.perimeter = 9.9
print(triangle.sideLength)


// willSet and didSet

class TriangleAndSquare {
    var triangle: EquilateralTriangle {
        willSet {
            square.sideLength = newValue.sideLength
        }
    }
    var square: Square {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }

    init(size: Double, name: String) {
        square = Square(sideLength: size, name: name )
        triangle = EquilateralTriangle(name, sideLength: size)
    }
}

var triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape")
print(triangleAndSquare.square.sideLength)
print(triangleAndSquare.triangle.sideLength)
triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
print(triangleAndSquare.triangle.sideLength)

// Inheritance: Super, Override and Final

class LivingBeing {
    var name = ""
    var age = 0

    func description() -> String {
        return "I am a living being"
    }
}

class Bird : LivingBeing {
    var numberOfWings = 0

    override func description() -> String {
        return "\(super.description()) / Bird"
    }
}

var bird = Bird()
bird.name = "John"
bird.age = 3
bird.numberOfWings = 2
print(bird.description())

class Chicken : Bird {
    var numberOfFeathers = 0

    override func description() -> String {
        return "\(super.description()) / Chicken"
    }
}

var chicken = Chicken()
chicken.name = "Little"
chicken.age = 1
chicken.numberOfWings = 2
chicken.numberOfFeathers = 5334534
chicken.description()

// Final: Preventing Overrides

/*
 You can prevent a method, property, or subscript from being overridden by marking it as final. Do this by writing the final modifier before the method, property, or subscript’s introducer keyword (such as final var, final func, final class func, and final subscript).

 Any attempt to override a final method, property, or subscript in a subclass is reported as a compile-time error. Methods, properties, or subscripts that you add to a class in an extension can also be marked as final within the extension’s definition.

 You can mark an entire class as final by writing the final modifier before the class keyword in its class definition (final class). Any attempt to subclass a final class is reported as a compile-time error.

 */


// ** ENUMS ** //

enum WindRose {
    /*
     It also works with one line notation:
     case North, South, East, West
    */
    case North
    case South
    case East
    case West
}

var directions = [WindRose.North, WindRose.East]

for direction in directions {
    switch direction {
    case .North:
        print("go straight")
    case .South:
        print("turn around")
    case .East:
        print("turn left")
    case .West:
        print("turn right")
    }
}

enum WindRoseString : String {
    case North = "go straight"
    case South = "turn around"
    case East = "turn left"
    case West = "turn right"
}

var directions2 = [WindRoseString.North, WindRoseString.East]

for direction in directions2 {
    print(direction.rawValue)
}

for direction in directions2 {
    print(direction.hashValue)
}


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

    // we could use Swift Equatable Protocol here
    func isEqual(otherRank: Rank) -> Bool {
        return self.rawValue == otherRank.rawValue
    }

    // we could use Swift Comparable Protocol here
    func isLessThan(otherRank: Rank) -> Bool {
        return self.rawValue < otherRank.rawValue
    }

    // we could use Swift Comparable Protocol here
    func isGreatherThan(otherRank: Rank) -> Bool {
        return self.rawValue < otherRank.rawValue
    }
}

let ace = Rank.ace
let aceRawValue = ace.rawValue
let aceHashValue = ace.hashValue

Rank.two.rawValue
Rank.two.hashValue

Rank.ace.isEqual(otherRank: .ace)
Rank.ace.isGreatherThan(otherRank: .king)
Rank.king.isLessThan(otherRank: .five)

if let convertedRank = Rank(rawValue: 3) {
    let threeDescription = convertedRank.simpleDescription()
    print(convertedRank)
    print(threeDescription)
}

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

let hearts = Suit.hearts
let heartsDescription = hearts.simpleDescription()

print(hearts.color())
print(Suit.clubs.color())


/*
   Another choice for enumeration cases is to have values associated with the
   case—these values are determined when you make the instance, and they can be
   different for each instance of an enumeration case.
*/

// TODO - imporve this example
enum ServerResponse {
    case result(String, String)
    case failure(String)
}

let success = ServerResponse.result("6:00 am", "8:09 pm")
let failure = ServerResponse.failure("Out of cheese.")

switch success {
case let .result(sunrise, sunset):
    print("Sunrise is at \(sunrise) and sunset is at \(sunset).")
case let .failure(message):
    print("Failure...  \(message)")
}


// ** STRUCTS ** //

// Class x Struct

/*
 One of the most important differences between structures and classes is that
 structures are always copied when they are passed around in your code,
 but classes are passed by reference.
 */

class Movie {
    var name = String()
    var year = Int()

    init(){}
}

var blackPanther = Movie()
var blackPantherCopy1 = blackPanther

blackPanther.name = "Black Panther"
blackPanther.year = 2018

var blackPantherCopy2 = blackPanther

print(blackPanther.name)
print(blackPanther.year)

print(blackPantherCopy1.name)
print(blackPantherCopy1.year)

print(blackPantherCopy2.name)
print(blackPantherCopy2.year)

struct MovieStruct {
    var name = String()
    var year = Int()

    init(){}
}

var titanic = MovieStruct()
var titanicCopy1 = titanic

titanic.name = "Titanic"
titanic.year = 1997

var titanicCopy2 = titanic

print(titanic.name)
print(titanic.year)

print(titanicCopy1.name)
print(titanicCopy1.year)

print(titanicCopy2.name)
print(titanicCopy2.year)


struct Card {
    var rank: Rank
    var suit: Suit

    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }

    /* TODO - Add a method to Card that creates a full deck of cards,
     with one card of each combination of rank and suit. */
}

let threeOfSpades = Card(rank: .three, suit: .spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()
