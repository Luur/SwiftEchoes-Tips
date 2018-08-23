//: Playground - noun: a place where people can play

import UIKit

let heros = ["Aragorn", "Legolas", "Gimli"]
let weapons = ["Sword", "Bow", "Axe"]

let zipped = Array(zip(heros, weapons))

for pair in zipped {
    print("hero \(pair.0) - weapon \(pair.1)")
}
