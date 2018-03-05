//: Playground - noun: a place where people can play

import UIKit

class AA {
    var propertyAA: String! {
        didSet {
            print("Function: \(#function), line: \(#line)")
        }
    }
    
    init(propertyAA: String) {
        self.propertyAA = propertyAA
    }
}

class BB {
    var propertyBB: String! {
        didSet {
            print("Function: \(#function), line: \(#line)")
        }
    }
    
    init(propertyBB: String) {
        defer {
            self.propertyBB = propertyBB
        }
    }
}

let aa = AA(propertyAA: "aa")
let bb = BB(propertyBB: "bb")
