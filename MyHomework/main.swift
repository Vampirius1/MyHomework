//
//  main.swift
//  MyHomework
//
//  Created by Владислав on 22.09.2022.
//

import Foundation

// MARK: Exercise 1
let days = ["Понедельник": 1, "Вторник": 2, "Среда": 3, "Четверг": 4, "Пятница": 5,  "Суббота": 6, "Воскресение": 7]

// MARK: Exercise 2
for (day, num) in days {
    print("\(day) - \(num)")
}

// MARK: Exercise 3
var passwordsUsers = ["User1": "Vasi@123", "User2": "!22wasdOP", "User3": "PORK!123"]

passwordsUsers["User4"] = "Qwerty123"
passwordsUsers["User5"] = "Qwerty1234"
passwordsUsers["User6"] = "qwerty12345"

print(passwordsUsers)

// MARK: Exercise 4
enum customError: Error, LocalizedError {
    case invalidPassword
    case invalidUsername(Character)
    case userNotFound
    
    public var errorDescription: String? {
        switch self {
        case .invalidPassword:
            return "Неверный пароль"
            
        case .invalidUsername(let character):
            return "Некорректный символ в имени пользователя - \(character)"
            
        case .userNotFound:
            return "Пользователь не найден"
        }
    }
}

// вызов ошибок
func validate (username: String, password: String) throws {
    guard password == "Qwerty" else {
        throw customError.invalidPassword
    }
    
    guard username == "Vladislav" else {
        throw customError.userNotFound
    }
    
    for character in username {
        guard character.isLetter else {
            throw customError.invalidUsername(character)
        }
    }
}

// MARK: Exercise 5-6
func onUserInputNameAndPassword (username: String, password: String) {
    
//    print(try? (validate(username: username, password: password)) == nil)
    do {
        try validate(username: username, password: password)

        // если валидация не вернула нам ошибку
        // значит все хорошо
    } catch {
        // если юзер ошибся то
        // обрабатываем ошибку
        print(error.localizedDescription)
    }
}

print(onUserInputNameAndPassword(username: "Vladislav", password: "Qwerty"))
