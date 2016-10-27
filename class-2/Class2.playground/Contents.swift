//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var array = [1,2,3,4,5,0]

let count = array.count

if array.isEmpty{

    //do stuff

}

let first = array.first
let last = array.last

let max = array.max()
let min = array.min()


array.insert(100, at:2)


var person = ["firstName": "Adam", "lastName": "Wallraff", "favoriteLanguage": "Swift"]
person.count

for (key, value) in person{
    print(key)
    print(value)

}

//
//Write a function that takes in an array of planet names as strings, checks if array contains “Earth”. If it does not, add it. Otherwise, do nothing.
//


var planetsArray = ["Jupiter", "Venus", "The Moon", "Mars"]

func addEarth (planet: String) -> [String] {
    if !planetsArray.contains("Earth") {
        planetsArray.append("Earth")
    }
    return planetsArray
}

addEarth(planet: "Earth")

//Using sort and reduce, create string from the above array sorted alphabetically. Example Output: [“Venus”, “Earth”] would produce “Earth Venus”
//

let numbers = [1, 2, 3, 4]
let addTwo: (Int, Int) -> Int = { x, y in x + y }
let numberSum = numbers.reduce(0, addTwo)


let planetString: (String, String) -> String = { planet1, planet2 in planet1 + " " + planet2 }
let rearrangedArray = planetsArray.sorted().reduce(" ", planetString)

print(rearrangedArray)


//Declare a dictionary of string keys and values. Declare a function that takes in a string and searches dictionary for it as a value.
//


var myDictionary: [String: String]

myDictionary = ["yoga": "Vinyasa"]

func search (key: String) -> String {
    for key in myDictionary.keys {
        print(key)
    }
    return("I found this string for you.")
}

search(key: "yoga")


//Write a function that counts repeating words in an array of strings, and prints out the count of each
//

var namesArray = ["Rae", "John", "Erika", "John", "Corey", "John", "Roman", "Adam", "Jake", "John"]

func repeatedName(name: String) -> Int {
    var count = 0
    for i in namesArray {
        if i == name {
            count += 1
        }
    }
    return count
}

repeatedName(name: "John")

//NOTE: I referenced John Shaff's code when I got stuck at the end//
