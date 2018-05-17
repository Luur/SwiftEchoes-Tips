//: Playground - noun: a place where people can play

import UIKit

extension Array where Element: Equatable {
    mutating func remove(_ object: Element) {
        if let index = index(of: object) {
            remove(at: index)
        }
    }
}

struct Person: Equatable {
    var name: String
    var age: Int
}


var persons = [Person(name: "Paul", age: 24), Person(name: "Tina", age: 27), Person(name: "James", age: 24)]

let tina = Person(name: "Tina", age: 27)

persons.remove(tina)
