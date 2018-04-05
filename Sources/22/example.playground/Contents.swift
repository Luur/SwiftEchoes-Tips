//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground. Have a nice day!"

extension String {
    var words: [String] {
        return components(separatedBy: .punctuationCharacters)
            .joined()
            .components(separatedBy: .whitespaces)
            .filter{!$0.isEmpty}
    }
}

print(str.words)
