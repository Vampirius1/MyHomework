//
//  main.swift
//  MyHomework
//
//  Created by Владислав on 22.09.2022.
//

import Foundation
var greeting = "Hello, playground"


func getHelloAndNumber () -> (valueNumOne : Int, valueNumTwo : String) {
    let values : (valueNumOne : Int, valueNumTwo : String) = (valueNumOne : 1 , valueNumTwo : "Stringi")
return values
    
}
print(getHelloAndNumber())

func getSum (_ numberOne : Int, _ numberTwo : Int) -> Int {
    return numberOne + numberTwo
}
print(getSum(1, 2))

//MARK: - Stringi
let str = "String"

//Цитирование
let strOne = """
Тут можно писать с " без проблем
"""
let strTwo = "String 1 \nString 2 \nString 3"
print(strTwo)

//Конкатенация строк
var concatenatedStringi = "Skill" + "Box"

//Интерполяция строк
let filler = "Наполнитель"
let interpolatedStringi = "Text used \(filler)"

var multiplicate = 3
let message = "\(multiplicate) times 2.5 is \(Double(multiplicate) * 2.5)"

//MARK: - Date Даты
// let currentDateTime = Date()
////let dateWithSeconds = Date(timeIntervalSinceReferenceDate: -123456789.0)
//var dateComponent = DateComponents()
//dateComponent.year = 1999
//dateComponent.month = 4
//dateComponent.day = 11
//dateComponent.timeZone = TimeZone(abbreviation: "JST")
//dateComponent.hour = 6
//dateComponent.minute = 33
//
//let currentCalendar = Calendar.current
//let dateFromComponent = currentCalendar.date(from: dateComponent)

let formatter = DateFormatter()
formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.sssZ"
let someDateTime = formatter.date(from: "2022-07-31T19:20:22.000Z")

let date : Date = Date()
formatter.string(from: date)

//MARK: - Character
var welcome = "Welcome"
let anyCharacter:Character = "!"
welcome.append(anyCharacter)
let dogString = "Dog! \u{1F436}"

//Подсчет символов
let randomStringi = "Absolutly random text in my project!"
print("My text have a \(randomStringi.count) characters")

//Поиск по индексу
var hi = "Hi!"
print(hi[hi.startIndex])

//Insertion by Index
hi.insert("!", at: hi.endIndex)

//MARK: - HomeWork

//MARK: Task 1
func nextNumber(_ number: Int) -> Int {
    
//    прибавляем к входному параметру 1
    let resultCode = number + 1
    
//    возвращаем полученное значение
    return resultCode
}
print(nextNumber(3))

//MARK: Task 2
//    вычисление квадрата
func getSquare (_ num: Int) -> Int {
    let result = num * num
    return result
}
let value = getSquare(5)
print(value)

//MARK: Task 3
func minutesAndSeconds (second:Int) -> ( minutes:Int, seconds:Int) {
//   узнаем количество минут
    let minutes = second / 60
    
//    узнаем количество секунд
    let seconds = second % 60
    
//    возвращаем полученные значения
    return (minutes, seconds)
}

//проверка на правильность введения данных
let secondsInFunc = minutesAndSeconds(second: 120)
if secondsInFunc.seconds < 0 || secondsInFunc.minutes < 0{
    print("Время не может быть отрицательным!")
} else {
    print("\(secondsInFunc.minutes) минуты, \(secondsInFunc.seconds) секунд")
}

//вывод минут отдельно
print("Minutes \(secondsInFunc.minutes)")

//Вывод секунд отдельно
print("Seconds \(secondsInFunc.seconds)")

//MARK: Task 4
func cocantens (_ string1: String , _ string2:String) -> String{

//    let twoString = string1 + string2
    return string1 + string2
}
print(cocantens("Score", "Swift"))
let coc = cocantens("Writing Swift code " , "is interactive and fun")

//MARK: Task 5
func getData (datOne : String) -> Date{
let formatter = DateFormatter()
formatter.dateFormat = "yyyy-MM-dd"
    
//    как вариант
    //    guard let dataRes = formatData.date(from: date) else { return Date() }
let someData = formatter.date(from: datOne)
    return someData ?? Date()
}
print(getData(datOne: "2000-02-08"))
