//
//  main.swift
//  Homework
//
//  Created by Владислав on 13.09.2022.
//

import Darwin
import Foundation
var greeting = "Hello, Homework"

//Exercise 1
func getNumbersSumm ( someArr:[Int]) -> Int {
    switch someArr.count{
case 0 :
    return 0;
case 1:
    return someArr[0];
default:
    return someArr[0] + someArr[1]
}
}
print(getNumbersSumm(someArr: []))
print(getNumbersSumm(someArr: [1]))

////Exercise 2
func getFirstLast(numbers:[Int]) -> [Int]? {

    guard numbers.count >= 2 else {
        return nil
    }
    return [numbers.first!, numbers.last!]
}
print(getFirstLast(numbers: [1]))

//Exercise 3
// volume dates
let n = 5

//create variable Dates
var dates = [Date]()

//Cicle append dates
for _ in 0 ..< n {
dates.append(Date(timeIntervalSinceNow: TimeInterval(Int.random(in: -1000000000 ... 1000000000))))
}

//Array of [String]
var datesArr = [String]()
func varOne (arrDate: [Date]) -> [String]{
for i in dates {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy- MM-dd HH:mm:ss"
    let convertToString = dateFormatter.string(from: i)
    datesArr.append("\(convertToString)")
    }
    return datesArr
}
print(varOne(arrDate: dates))

//Exercise 4
func convertStringMap (dates : [Date]) -> [String] {
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy- MM-dd HH:mm:ss"
    return dates.map {
        formatter.string(from: $0)
    }

}
print(convertStringMap(dates: dates))

func convertStringForEach (dates : [Date]) -> [String] {
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy- MM-dd HH:mm:ss"
    var getDateString = [String]()
    dates.forEach {date in
        getDateString.append("\(formatter.string(from: date))")
    }
    return datesArr
}
print(convertStringForEach(dates: dates))

//Exercise 5
var fruit: Set<String> = []
fruit.insert("orange")
fruit.insert("apple")
fruit.insert("banana")
fruit.insert("grapefruit")
var redFood:Set = ["apple", "tomato", "grapefruit", "strawberry"]

//New Sequence 1
let redProducts = fruit.intersection(redFood)
print(redProducts)

//New Sequence 2
let foodNotRedFruit = redFood.subtracting(fruit)
print(foodNotRedFruit)

//New Sequence 3
let allFoodNotRedFruit = redFood.symmetricDifference(fruit)
print(allFoodNotRedFruit)

//Exercise 6
func removeDublicateElement (getMass:[Int]) -> [Int] {
    let setMass = Array(Set(getMass))
    return setMass
}
print(removeDublicateElement(getMass: [1,2,3,4,5,1,2,3,4,5]))
