//: Playground - noun: a place where people can play

import UIKit

infix operator &
func  &<T : Equatable>(lhs: [T], rhs: [T]) -> [T] {
    return lhs.filter { rhs.contains($0) }
}

let numbers1 = ["10", "20", "30", "40", "50"]
let numbers2 = ["15", "20", "25", "30", "35"]

let commonNumbers = numbers1 & numbers2

struct Car: Equatable {
    static func ==(lhs: Car, rhs: Car) -> Bool {
        return lhs.model == rhs.model
    }
    
    var model: String
}

let cars1 = [Car(model: "Opel"), Car(model: "Volvo"), Car(model: "BMW")]
let cars2 = [Car(model: "Toyota"), Car(model: "BMW")]

let commonCars = cars1 & cars2
