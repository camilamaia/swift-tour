// Simple Values

let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 4.0


let age = 10
let weight : Float = 50.532
Float(age) * weight
let weightString = "50.532"
Float(age) * Float(weightString)!


let label = "The width is "
let width = 94
let widthLabel = label + String(width)


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


var shoppingList = ["catfish", "water", "tulips", "blue paint"]
shoppingList[1] = "bottle of water"
print(shoppingList)

var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]
occupations["Jayne"] = "Public Relations"
print(occupations)


let emptyArray = [String]()
let emptyDictionary = [String: Float]()

shoppingList = []
occupations = [:]

var explicitArray : [Int] = [2, 4, 6]
explicitArray.append(8)
explicitArray.count

var emojis = ["😎", "🤯", "😤"]
emojis.insert("😂", at: 1)
emojis.remove(at: 3)
print(emojis)

emojis.contains("🤯")
emojis.contains("😤")

emojis.index(of: "😎")
emojis.index(of: "😤")


// Control Flow

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
