//: Playground - noun: a place where people can play

import UIKit

extension Array where Element: Hashable {
    func after(item: Element) -> Element? {
        if let index = self.index(of: item), index + 1 < self.count {
            return self[index + 1]
        }
        return nil
    }
}

let numbers = [10, 2, 32, 47, 15, 76, 77, 98]
let second = numbers[1]
let next = numbers.after(item: second)
