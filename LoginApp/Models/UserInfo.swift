//
//  UserInfo.swift
//  LoginApp
//
//  Created by Павел Лахно on 05.10.2022.
//

struct User {
    let logIn = "User"
    let password = "Password"
    let person: Person
}

struct Person {
    let firstName: String
    let secondName: String
    let age: Int
    let city: String
    let profession: String
    
    func getInfo() -> String {
        return """
            По образованию я инженер-конструктор космических аппаратов и разгонных блоков. Работаю на оборонно-промышленном предприятии, а в свободное от работы время учусь очень интересной и увлекательной профессии.
            """
    }
}
