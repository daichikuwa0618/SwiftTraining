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
