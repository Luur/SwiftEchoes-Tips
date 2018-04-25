//: Playground - noun: a place where people can play

import UIKit

assert(4 == 4, "Maths error") //OK
assert(3 == 2, "Maths error") //Crash
assertionFailure("ERROR") //Crash

precondition(4 == 4, "Maths error") //OK
precondition(3 == 2, "Maths error") //Crash
preconditionFailure("ERROR") //Crash

fatalError("ERROR") //Crash
