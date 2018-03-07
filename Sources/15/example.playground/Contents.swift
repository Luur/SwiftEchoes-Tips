//: Playground - noun: a place where people can play

import UIKit

extension Array {
    func chunk(_ chunkSize: Int) -> [[Element]] {
        return stride(from: 0, to: self.count, by: chunkSize).map({ (startIndex) -> [Element] in
            let endIndex = (startIndex.advanced(by: chunkSize) > self.count) ? self.count-startIndex : chunkSize
            return Array(self[startIndex..<startIndex.advanced(by: endIndex)])
        })
    }
}

let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
let chunkNumbers = numbers.chunk(3)
print(chunkNumbers)
