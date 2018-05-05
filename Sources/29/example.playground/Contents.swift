//: Playground - noun: a place where people can play

import UIKit

extension Array {
    func unique<T:Hashable>(map: ((Element) -> (T)))  -> [Element] {
        var set: Set<T> = []
        var arrayOrdered: [Element] = []
        for value in self {
            if !set.contains(map(value)) {
                set.insert(map(value))
                arrayOrdered.append(value)
            }
        }
        return arrayOrdered
    }
}


struct User {
    var name: String
    var age: Int
    var id: Int
}

let users = [User(name: "Paul", age: 24, id: 1), User(name: "John", age: 32, id: 2), User(name: "Tina", age: 27, id: 3), User(name: "James", age: 24, id: 2)]

let uniqueUsers = users.unique {$0.id}
