# Swift tips and tricks

Here's list of Swift tips & tricks with all additional sources (playgrounds, images) that I would like to share. Also you can find them on [Twitter @szubyak](https://twitter.com/szubyak) and [Facebook @szubyakdev](https://www.facebook.com/szubyakdev), where you can ask questions and respond with feedback. I will realy glad to have you there! 😀

## Table of contents

[#1 Safe way to return element at specified index](https://github.com/Luur/SwiftTips#1-safe-way-to-return-element-at-specified-index)<br />
[#2 Easy way to hide Status Bar](https://github.com/Luur/SwiftTips#2-easy-way-to-hide-status-bar)<br />
[#3 Enumerated iteration](https://github.com/Luur/SwiftTips#3-enumerated-iteration)

## [#1 Safe way to return element at specified index](https://twitter.com/szubyak/status/950345927054778368)

You can extend collections to return the element at the specified index if it is within bounds, otherwise nil.

```swift
extension Collection {
    subscript (safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}

let cars = ["Lexus", "Ford", "Volvo", "Toyota", "Opel"]
let selectedCar1 = cars[safe: 3] // Toyota
let selectedCar2 = cars[safe: 6] // not crash, but nil
```
Back to [Top](https://github.com/Luur/SwiftTips#table-of-contents)

## [#2 Easy way to hide Status Bar](https://twitter.com/szubyak/status/950687583222337537)

Ever faced the problem that u can't hide status bar because of 'prefersStatusBarHidden' is get-only? The simplest solution is to 'override' it 🧐👨‍💻

```swift
let vc = UIViewController()
vc.prefersStatusBarHidden = true // error
print("statusBarHidded \(vc.prefersStatusBarHidden)") // false

class TestViewController: UIViewController {
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

let testVC = TestViewController()
print("statusBarHidded \(testVC.prefersStatusBarHidden)") // true
```
Back to [Top](https://github.com/Luur/SwiftTips#table-of-contents)

## [#3 Enumerated iteration](https://twitter.com/szubyak/status/951039299759362048)

Use `enumerated` when you iterate over the collection to return a sequence of pairs `(n, c)`, where `n` - index for each element and `c` - its value 👨‍💻💻
```swift
for (n, c) in "Swift".enumerated() {
    print("\(n): \(c)")
}
```
Also be careful with this tricky thing, `enumerated` on collection will not provide actual indices, but monotonically increasing integer, which happens to be the same as the index for Array but not for anything else, especially slices

Back to [Top](https://github.com/Luur/SwiftTips#table-of-contents)
