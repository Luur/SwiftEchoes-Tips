//: Playground - noun: a place where people can play

import UIKit

let numbers = ["1", "2", "3", "4", "notInt"]
let mapNumbers = numbers.map { Int($0) }
let flatNumbers = numbers.flatMap { Int($0) }

print("\(mapNumbers) \n \(flatNumbers)")
