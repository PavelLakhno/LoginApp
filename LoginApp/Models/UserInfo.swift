//
//  UserInfo.swift
//  LoginApp
//
//  Created by Павел Лахно on 05.10.2022.
//

struct User {
    let logIn: String
    let password: String
    let person: Person
    
    static func getUserInfo() -> User {
        User(
            logIn: "User",
             password: "Password",
             person: .getPersonInfo()
        )
    }
}

struct Person {
    let firstName: String
    let lastName: String
    let age: Int
    let city: String
    let profession: String
    let bio: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    
    static func getPersonInfo() -> Person {
        Person(
            firstName: "Павел",
            lastName: "Лахно",
            age: 32,
            city: "Москва",
            profession: "Инженер",
            bio:    """
                    По образованию я инженер-конструктор космических аппаратов и разгонных блоков. Работаю на оборонно-промышленном предприятии, а в свободное от работы время обучаюсь очень интересной и увлекательной профессии.
                    """
        )
    }
}
