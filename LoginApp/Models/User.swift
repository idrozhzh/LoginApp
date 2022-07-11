//
//  User.swift
//  LoginApp
//
//  Created by Иван Дрожжин on 05.07.2022.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUserData() -> User {
        User(
            login: "idrozhzh",
            password: "qwerty",
            person: Person.getPerson()
        )
    }
    
}

struct Person {
    let name: String
    let surname: String
    let age: Int
    let photo: String
    let education: String
    let profession: String
    let interests: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(
            name: "Иван",
            surname: "Дрожжин",
            age: 32,
            photo: "photo",
            education: "Психолог",
            profession: "Предприниматель",
            interests: "Разработка, маркетинг, личностный рост, образование"
        )
    }
    
}
