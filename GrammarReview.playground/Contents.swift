import UIKit

var helloStr = "Hello, playground"

var myVariable = 42
print(myVariable)
print(helloStr)
print("hello world")

var i = 1

for _ in 0...10 {
    print("why")
}

let a = 10.0 // implicit
let b = 10 // implicit
let c:Double = 10 // expricit

print(a,b,c)

helloStr += "why"
print(helloStr)

func calValue(price:Int, number:Int) -> Int {
    let value = price*number
    return value
}

print("hello \(calValue(price: 100, number: 10) * 2)")


//for i in 1...360 {
//    let theta:Double = Double(i) / 180 * Double.pi
//    let wave = sin(theta)
//}

// closure
let driving = {
    print("I'm driveing in my car")
}

driving()


// array
var songs = ["you belong with me", "All we know", "Brighter"]
songs[0]
type(of: songs)

// error
//var songs2 = ["hello", "help", 3]
//type(of:songs)

// error
//var songs3: [String] = ["hello", "help", 3]

// okey
var songs4: [Any] = ["hello", "help", 3]
type(of: songs4)

// Shake it of
var people: [String] = ["players", "haters", "heart-breakers", "fakers"]
var actions: [String] = ["play", "hate", "break", "fake"]
for i in 0..<people.count {
    var str = "\(people[i]) gonna"
    
    for _ in 1...5 {
        str += " \(actions[i])"
    }
    str += "."
    print(str)
}

// optional
func getHaterStatus(weather: String) -> String? {
    if weather == "sunny"{
        return nil
    } else {
        return "Hate"
    }
}

var status: String?
status = getHaterStatus(weather: "rainy")

func takeHaterActions(status: String) {
    if status == "Hate" {
        print("Hating")
    }
}

// Enumerator
enum MensSize {
    case S
    case M
    case L
    case XL
}

enum WomensSize {
    case XS, S, M, L
}

var mySize = MensSize.M
mySize = .S // implicit

var herSize: WomensSize
herSize = .XS

enum Direction: Int {
    case forward = 1
    case backward // 2
    case right // 3
    case left // 4
}

let dir1 = Direction.forward
let dir3 = Direction.left

print(dir1)
print(dir1.rawValue)
print(dir3)
print(dir3.rawValue)

enum Pattern {
    case Monotone(_: PColor)
    case Border(color1: PColor, color2: PColor)
    case Dots(base: PColor, dot1: PColor, dot2: PColor)
}

enum PColor: String {
    case red = "赤"
    case green = "緑"
    case yellow = "黄"
    case white = "白"
}

let shirt1 = Pattern.Monotone(.red)
let shirt2 = Pattern.Border(color1: .white, color2: .red)
let shirt3 = Pattern.Dots(base: .white, dot1: .red, dot2: .green)

let patternList = [shirt1, shirt2, shirt3]
for thePattern in patternList {
    switch thePattern {
    case .Monotone(let c):
        print("\(c.rawValue)の無地")
    case .Border(let c1, let c2):
        print("\(c1.rawValue)と\(c2.rawValue)のボーダー")
    case let .Dots(base, dot1, dot2):
        let bColor = base.rawValue
        let c1 = dot1.rawValue
        let c2 = dot2.rawValue
        print("\(bColor)地に\(c1)と\(c2)のドット")
    }
}

// Struct
struct ColorBox {
    var width: Int
    var height: Int
    var color: String
}

struct WhiteBox {
    var width: Int = 100
    var height: Int = 100
    let color: String = "white"
}

let myBox = WhiteBox(width: 10, height: 30)
print(myBox)
print(myBox.color)

var redBox = ColorBox(width: 100, height: 100, color: "red")
redBox.width = 50

print(redBox)

struct Ball {
    static let madein = "Japan"
    static var sozai = "paper"
    var radius: Double = 10
}

Ball.sozai = "wood"
let ball1 = Ball(radius: 5)
let ball2 = Ball()
print(ball1.radius)
print(ball2.radius)
print(Ball.madein)
print(Ball.sozai)

// class
class Singer {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func sing() {
        print("lalala")
    }
}

class CountrySinger: Singer {
    override func sing() {
        print("Trucks, guitars and liquor")
    }
}

class HeavyMetalSinger: Singer {
    var noiseLevel: Int
    
    init(name: String, age: Int, noiseLevel: Int) {
        self.noiseLevel = noiseLevel
        super.init(name: name, age: age)
    }
    
    override func sing() {
        print("Grrr rargh rargh rarrrrgh!")
    }
}

var taylor = Singer(name: "Taylor", age: 25)
var oesan = HeavyMetalSinger(name: "daichi", age: 22, noiseLevel: 2)

print(oesan)

// static properties and method

struct TaylorFan {
    static var favoriteSong = "Look what you made me do"
    
    var name: String
    var age: Int
}

let fan = TaylorFan(name: "Daichi", age: 22)
let fan2 = TaylorFan(name: "Jane", age: 20)
TaylorFan.favoriteSong = "22"
print(TaylorFan.favoriteSong)

// Polymorphism and typecasting
class Album {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class StudioAlbum: Album {
    var studio: String
    
    init(name: String, studio: String) {
        self.studio = studio
        super.init(name: name)
    }
}

class LiveAlbum: Album {
    var location: String
    
    init(name: String, location: String) {
        self.location = location
        super.init(name: name)
    }
}


// closure
let vw = UIView()

UIView.animate(withDuration: 0.5) {
    vw.alpha = 0
}



