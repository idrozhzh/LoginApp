//
//  User.swift
//  LoginApp
//
//  Created by Иван Дрожжин on 05.07.2022.
//

struct User {
    let username = "idrozhzh"
    let password = "qwerty"
    let avatar: String
    let person: Person
}

struct Person {
    let name: String
    let age: Int
    let about: [Bio: String]
    
    static func getPerson() -> Person {
        Person(
            name: "Иван",
            age: 32,
            about: [
                .photo : "photo.jpg",
                .education : "Психолог",
                .profession : "Предприниматель",
                .interests : "Разработка, маркетинг, личностный рост, образование"
            ]
        )
    }
    
}

enum Bio: String {
    case interests = "Интересы"
    case photo = "Фото"
    case education = "Образование"
    case profession = "Профессия"
}
