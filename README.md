# Swift tips and tricks

Here's list of Swift tips & tricks with all additional sources (playgrounds, images) that I would like to share. Also you can find them on [Twitter @szubyak](https://twitter.com/szubyak), where you can ask questions and respond with feedback. I will really glad to have you there! 😀

## Table of contents

[#27 Debugging: Breakpoints](https://github.com/Luur/SwiftTips#27-debugging-breakpoints)<br />
[#26 Debugging: Asserts](https://github.com/Luur/SwiftTips#26-debugging-asserts)<br />
[#25 Debugging: Log functions](https://github.com/Luur/SwiftTips#25-debugging-log-functions)<br />
[#24 Update `UIView` content with animation](https://github.com/Luur/SwiftTips#24-update-uiview-content-with-animation)<br />
[#23 Observe MOC changes](https://github.com/Luur/SwiftTips#23-observe-moc-changes)<br />
[#22 Split `String` into words](https://github.com/Luur/SwiftTips#22-split-string-into-words)<br />
[#21 Comparing tuples](https://github.com/Luur/SwiftTips#21-comparing-tuples)<br />
[#20 How to detect that user stop typing](https://github.com/Luur/SwiftTips#20-how-to-detect-that-user-stop-typing)<br />
[#19 Left/rigth text offset inside `UITextField`](https://github.com/Luur/SwiftTips#19-leftrigth-text-offset-inside-uitextfield)<br />
[#18 Common elements in two arrays](https://github.com/Luur/SwiftTips#18-common-elements-in-two-arrays)<br />
[#17 Apply gradient to Navigation Bar](https://github.com/Luur/SwiftTips#17-apply-gradient-to-navigation-bar)<br />
[#16 Get next element of array](https://github.com/Luur/SwiftTips#16-get-next-element-of-array)<br />
[#15 Split array by chunks of given size](https://github.com/Luur/SwiftTips#15-split-array-by-chunks-of-given-size)<br />
[#14 Transparent/Opaque Navigation Bar](https://github.com/Luur/SwiftTips#14-transparentopaque-navigation-bar)<br />
[#13 Group objects by property](https://github.com/Luur/SwiftTips#13-group-objects-by-property)<br />
[#12 Semicolons in Swift](https://github.com/Luur/SwiftTips#12-semicolons-in-swift)<br />
[#11 Fake AppDelegate](https://github.com/Luur/SwiftTips#11-fake-appdelegate)<br />
[#10 Invoke `didSet` when property’s value is set inside `init` context](https://github.com/Luur/SwiftTips#10-invoke-didset-when-propertys-value-is-set-inside-init-context)<br />
[#9 Change type of items in array](https://github.com/Luur/SwiftTips#9-change-type-of-items-in-array)<br />
[#8 `forEach` and `map` execution order difference](https://github.com/Luur/SwiftTips#8-foreach-and-map-execution-order-difference)<br />
[#7 Testing settings](https://github.com/Luur/SwiftTips#7-testing-settings)<br />
[#6 Tips for writing error messages](https://github.com/Luur/SwiftTips#6-tips-for-writing-error-messages)<br />
[#5 Profit to compiler](https://github.com/Luur/SwiftTips#5-profit-to-compiler)<br />
[#4 Combinations of pure functions](https://github.com/Luur/SwiftTips#4-combinations-of-pure-functions)<br />
[#3 Enumerated iteration](https://github.com/Luur/SwiftTips#3-enumerated-iteration)<br />
[#2 Easy way to hide Status Bar](https://github.com/Luur/SwiftTips#2-easy-way-to-hide-status-bar)<br />
[#1 Safe way to return element at specified index](https://github.com/Luur/SwiftTips#1-safe-way-to-return-element-at-specified-index)<br />

## [#27 Debugging: Breakpoints](https://twitter.com/szubyak/status/989442320260108288)

A `breakpoint` is a debugging tool that allows you to pause the execution of your program up to a certain moment. Creating `pause` points in your code can help you investigate your code.
While your app is paused, light green arrow that shows your current execution position can be moved. Just click and drag it somewhere else to have execution pick up from there – although Xcode will warn you that it might have unexpected results, so tread carefully!

Right-click on the breakpoint (the blue arrow marker) and choose Edit Breakpoint.

![](../master/Sources/27/img1.png)

In the popup that appears you can set the `condition`. Execution will now pause only when your condition is true. You can use conditional breakpoints to execute debugger commands automatically – the `Automatically continue` checkbox is perfect for making your program continue uninterrupted while breakpoints silently trigger actions.
Also you can set `Ignore times before stoping` and actions like `Debuger command`, `Log message`, `Sound`, etc.

![](../master/Sources/27/img2.png)

Shortcuts:

`F6`- Step Over.
`Ctrl+Cmd+Y` - Continue (continue executing my program until you hit another breakpoint)

In Xcode debug console you can use `po` to print what you need during pause.

![](../master/Sources/27/img3.png)

## [#26 Debugging: Asserts](https://twitter.com/szubyak/status/989153864472547328)

`assert()` is debug-only check that will force your app to crash if specific condition is false. 

```swift
assert(4 == 4, "Maths error") //OK
assert(3 == 2, "Maths error") //Crash
```
As you can see `assert()` takes two parameters: 
* Something to check.
* Message to print out of the check fails. 
    
If the check evaluates to false, your app will be forced to crash because you know it's not in a safe state, and you'll see the error message in the debug console.
If you don’t have a condition to evaluate, or don’t need to evaluate one, you can use `assertionFailure()` function.

`precondition()` is not debug-only check. It will crash your app even in release mode.

```swift
precondition(4 == 4, "Maths error") //OK
precondition(3 == 2, "Maths error") //Crash
```
`preconditionFailure()` works the same as `assertionFailure()`. With the same difference as above, it works for release builds. 

`fatalError()`, like `assertionFailure()` and `preconditionFailure()` works for all optimisation levels in all build configurations.

```swift
fatalError("ERROR")
```

More about asserts and optimisation levels you can find [here](https://agostini.tech/2017/10/01/assert-precondition-and-fatal-error-in-swift/)

Back to [Top](https://github.com/Luur/SwiftTips#table-of-contents)

## [#25 Debugging: Log functions](https://twitter.com/szubyak/status/988328809681342464) 

Debuging 👨‍🔧 is one of the most importent aspects of programing👨‍💻. It should be in your skillbox anyway. It contains  log functions, asserts, breakpoints and view debuging.
Let's observe everyone of them just one by one. And here are log functions in the crosshairs 🔍.

We know `print()` as a variadic function. Function that accepts any number of parameters. 

```swift
print("one", "two", "three", "four") //one two three four
```

But it's variadic nature becomes much more useful when you use `separator` and `terminator`, its optional extra parameters. `separator` gives you opportunity to provide a string that should be placed between every item. It's "space" by default.

```swift
print("one", "two", "three", "four", separator: "-") //one-two-three-four
```

Meanwhile `terminator` is what should be placed after the last item.
It’s `\n` by default, which means "line break".

```swift
print("one", "two", "three", "four", terminator: " five") //one two three four five
```

Back to [Top](https://github.com/Luur/SwiftTips#table-of-contents)

## [#24 Update `UIView` content with animation](https://twitter.com/szubyak/status/985434399138304000)

Really lightweight way 🎈 How to add content changing animation to UIView and it subclasses.

```swift
extension UIView {
    func fadeTransition(_ duration: CFTimeInterval) {
        let animation = CATransition()
        animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        animation.type = kCATransitionFade
        animation.duration = duration
        layer.add(animation, forKey: kCATransitionFade)
    }
}
```
Just invoke 🧙‍♂️ `fadeTransition(_ duration: CFTimeInterval)` by your view before you will apply a change.

```swift
label.fadeTransition(1)
label.text = "Updated test content with animation"
```

Back to [Top](https://github.com/Luur/SwiftTips#table-of-contents)

## [#23 Observe MOC changes](https://twitter.com/szubyak/status/983647253234626560)

Next code snippet 📃 I use to keep eye on changes that take place in the managed object context. Useful thing to know what's going on, what was added, updated ( what specific values were changed ) or deleted 📥📝📤

```swift
func changeNotification(_ notification: Notification) {
    guard let userInfo = notification.userInfo else { return }

    if let inserts = userInfo[NSInsertedObjectsKey] as? Set<NSManagedObject>, inserts.count > 0 {
        print("--- INSERTS ---")
        print(inserts)
        print("+++++++++++++++")
    }

    if let updates = userInfo[NSUpdatedObjectsKey] as? Set<NSManagedObject>, updates.count > 0 {
        print("--- UPDATES ---")
        for update in updates {
            print(update.changedValues())
        }
        print("+++++++++++++++")
    }

    if let deletes = userInfo[NSDeletedObjectsKey] as? Set<NSManagedObject>, deletes.count > 0 {
        print("--- DELETES ---")
        print(deletes)
        print("+++++++++++++++")
    }
}

NotificationCenter.default.addObserver(self, selector: #selector(self.changeNotification(_:)), name: .NSManagedObjectContextObjectsDidChange, object: moc)
```
Back to [Top](https://github.com/Luur/SwiftTips#table-of-contents)

## [#22 Split `String` into words](https://twitter.com/szubyak/status/981833649296498689)

Default ways of splitting ✂️ `String` don't work perfect sometimes, because of punctuation characters and other "wreckers" 🐛. Here is extension for splitting ✂️ `String` into words 💻🧐👌.

```swift
extension String {
    var words: [String] {
        return components(separatedBy: .punctuationCharacters)
            .joined()
            .components(separatedBy: .whitespaces)
            .filter{!$0.isEmpty}
    }
}
```
Back to [Top](https://github.com/Luur/SwiftTips#table-of-contents)

## [#21 Comparing tuples](https://twitter.com/szubyak/status/980119909387599873)

I discovered strange behavior of tuples during comparing 🤪. Comparison cares only about types and ignores labels 😦. So result can be unexpected. Be careful ⚠️. 

```swift
let car = (model: "Tesla", producer: "USA")
let company = (name: "Tesla", country: "USA")
if car == company {
    print("Equal")
} else {
    print("Not equal")
}
```
Printed result will be: `Equal`

Back to [Top](https://github.com/Luur/SwiftTips#table-of-contents)

## [#20 How to detect that user stop typing](https://twitter.com/szubyak/status/978659051893555201)

Painless way ( NO to timers from now ⛔️ ) how to detect that user stop typing text in text field ⌨️ Could be usefull for lifetime search 🔍

```swift
class TestViewController: UIViewController {

    @objc func searchBarDidEndTyping(_ textField: UISearchBar) {
        print("User finsihed typing text in search bar")
    }

    @objc func textFieldDidEndTyping(_ textField: UITextField) {
        print("User finished typing text in text field")
    }
}

extension TestViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        NSObject.cancelPreviousPerformRequests(withTarget: self, selector: #selector(searchBarDidEndTyping), object: searchBar)
        self.perform(#selector(searchBarDidEndTyping), with: searchBar, afterDelay: 0.5)
        return true
    }
}

extension TestViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        NSObject.cancelPreviousPerformRequests(withTarget: self, selector: #selector(textFieldDidEndTyping), object: textField)
        self.perform(#selector(textFieldDidEndTyping), with: textField, afterDelay: 0.5)
        return true
    }
}
```

Back to [Top](https://github.com/Luur/SwiftTips#table-of-contents)

## [#19 Left/rigth text offset inside `UITextField`](https://twitter.com/szubyak/status/976547738908323840)

Clear way of adding left\right text offset inside `UItextField` 🔨🧐💻  Also, because of `@IBInspectable` it could be easily editable in Interface Builder’s inspector panel.

```swift
@IBDesignable
extension UITextField {

    @IBInspectable var leftPaddingWidth: CGFloat {
        get {
            return leftView!.frame.size.width
        }
        set {
            let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: newValue, height: frame.size.height))
            leftView = paddingView
            leftViewMode = .always
        }
    }

    @IBInspectable var rigthPaddingWidth: CGFloat {
        get {
            return rightView!.frame.size.width
        }
        set {
            let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: newValue, height: frame.size.height))
            rightView = paddingView
            rightViewMode = .always
        }
    }
}
```

Back to [Top](https://github.com/Luur/SwiftTips#table-of-contents)

## [#18 Common elements in two arrays](https://twitter.com/szubyak/status/975736596661178369)

I'm not huge fan of custom operators 😐 because they are intuitively obvious only to their authors, but I've created one which gives you opportunity to get common elements in two arrays whos elements implement `Equatable` protocol 🔨🧐💻

```swift
infix operator &
func  &<T : Equatable>(lhs: [T], rhs: [T]) -> [T] {
    return lhs.filter { rhs.contains($0) }
}
```

Back to [Top](https://github.com/Luur/SwiftTips#table-of-contents)

## [#17 Apply gradient to Navigation Bar](https://twitter.com/szubyak/status/974580828750704641)

Gradient 🏳️‍🌈 on Navigation Bar is really good looking, but not very easy to implement 🧐🔨👨‍💻
Works with iOS 11 largeTitle navigation bar too 👌

```swift
struct GradientComponents {
    var colors: [CGColor]
    var locations: [NSNumber]
    var startPoint: CGPoint
    var endPoint: CGPoint
}

extension UINavigationBar {

    func applyNavigationBarGradient(with components: GradientComponents) {

        let size = CGSize(width: UIScreen.main.bounds.size.width, height: 1)
        let gradient = CAGradientLayer()
        gradient.frame = CGRect(x: 0, y: 0, width: size.width, height: size.height)

        gradient.colors = components.colors
        gradient.locations = components.locations
        gradient.startPoint = components.startPoint
        gradient.endPoint = components.endPoint

        UIGraphicsBeginImageContext(gradient.bounds.size)
        gradient.render(in: UIGraphicsGetCurrentContext()!)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        self.barTintColor = UIColor(patternImage: image!)
    }
}
```

Back to [Top](https://github.com/Luur/SwiftTips#table-of-contents)

## [#16 Get next element of array](https://twitter.com/szubyak/status/973146709030207489)

Easy way how to get next element of array

```swift
extension Array where Element: Hashable {
    func after(item: Element) -> Element? {
        if let index = self.index(of: item), index + 1 < self.count {
            return self[index + 1]
        }
        return nil
    }
}
```

Back to [Top](https://github.com/Luur/SwiftTips#table-of-contents)

## [#15 Split array by chunks of given size](https://twitter.com/szubyak/status/971351860820037632)

Great extension to split array by chunks of given size

```swift
extension Array {
    func chunk(_ chunkSize: Int) -> [[Element]] {
        return stride(from: 0, to: self.count, by: chunkSize).map({ (startIndex) -> [Element] in
            let endIndex = (startIndex.advanced(by: chunkSize) > self.count) ? self.count-startIndex : chunkSize
            return Array(self[startIndex..<startIndex.advanced(by: endIndex)])
        })
    }
}
```

Back to [Top](https://github.com/Luur/SwiftTips#table-of-contents)

## [#14 Transparent/Opaque Navigation Bar](https://twitter.com/szubyak/status/970962096245628929)
Scene with `UIImageView` on top looks stylish if navigation bar is transparent.
Easy way how to make navigation bar transparent or opaque.

```swift
func transparentNavigationBar() {
    self.setBackgroundImage(UIImage(), for: .default)
    self.shadowImage = UIImage()
}

func opaqueNavigationBar() {
    self.shadowImage = nil
    self.setBackgroundImage(nil, for: .default)
}
```

Back to [Top](https://github.com/Luur/SwiftTips#table-of-contents)

## [#13 Group objects by property](https://twitter.com/szubyak/status/966248375988490240)

One more useful extension 🔨💻 Gives you opportunity to group objects by property 👨‍💻🧐

```swift
extension Sequence {
    func group<GroupingType: Hashable>(by key: (Iterator.Element) -> GroupingType) -> [[Iterator.Element]] {
        var groups: [GroupingType: [Iterator.Element]] = [:]
        var groupsOrder: [GroupingType] = []
        forEach { element in
            let key = key(element)
            if case nil = groups[key]?.append(element) {
                groups[key] = [element]
                groupsOrder.append(key)
            }
        }
        return groupsOrder.map { groups[$0]! }
    }
}
```

Usage:

```swift
struct Person {
    var name: String
    var age: Int
}

let mike = Person(name: "Mike", age: 18)
let john = Person(name: "John", age: 18)
let bob = Person(name: "Bob", age: 56)
let jake = Person(name: "Jake", age: 56)
let roman = Person(name: "Roman", age: 25)

let persons = [mike, john, bob, jake, roman]

let groupedPersons = persons.group { $0.age }

for persons in groupedPersons {
    print(persons.map { $0.name })
}
```

Result:

```
["Mike", "John"]
["Bob", "Jake"]
["Roman"]
```

Also in-box [alternative](https://developer.apple.com/documentation/swift/dictionary/2919592-init)

Back to [Top](https://github.com/Luur/SwiftTips#table-of-contents)

## [#12 Semicolons in Swift](https://twitter.com/szubyak/status/963144748004454400)

Do you need semicolons in Swift ? Short answer is NO, but you can use them and it will give you interesting opportunity. Semicolons enable you to join related components into a single line.

```swift
func sum(a: Int, b: Int) -> Int {
    let sum = a + b; return sum
}
```

Back to [Top](https://github.com/Luur/SwiftTips#table-of-contents)

## [#11 Fake AppDelegate](https://twitter.com/szubyak/status/963013740265385984)

Unit testing shouldn’t have any side effects. While running tests, Xcode firstly launches app and thus having the side effect of executing any code we may have in our App Delegate and initial View Controller. Fake AppDelegate in your `main.swift` to prevent it.

You can find `main.swift` file [here](../master/Sources/11/main.swift)

Back to [Top](https://github.com/Luur/SwiftTips#table-of-contents)

## [#10 Invoke `didSet` when property’s value is set inside `init` context](https://twitter.com/szubyak/status/961707655105531905)

Apple's docs specify that: "Property observers are only called when the property’s value is set outside of initialization context."

`defer` can change situation 😊

```swift
class AA {
    var propertyAA: String! {
        didSet {
            print("Function: \(#function)")
        }
    }

    init(propertyAA: String) {
        self.propertyAA = propertyAA
    }
}

class BB {
    var propertyBB: String! {
        didSet {
            print("Function: \(#function)")
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
```
Result:

```
Function: propertyBB
```

Back to [Top](https://github.com/Luur/SwiftTips#table-of-contents)

## [#9 Change type of items in array](https://twitter.com/szubyak/status/956544356370059265)

Two ways of changing type of items in array and obvious difference between them 🧐👨‍💻

```swift
let numbers = ["1", "2", "3", "4", "notInt"]
let mapNumbers = numbers.map { Int($0) }  // [Optional(1), Optional(2), Optional(3), Optional(4), nil]
let compactNumbers = numbers.compactMap { Int($0) } // [1, 2, 3, 4]
```

Back to [Top](https://github.com/Luur/SwiftTips#table-of-contents)

## [#8 `forEach` and `map` execution order difference](https://twitter.com/szubyak/status/956538549444186112)

Execution order is interesting difference between `forEach` and `map`: `forEach` is guaranteed to go through array elements in its sequence, while `map` is free to go in any order.

Back to [Top](https://github.com/Luur/SwiftTips#table-of-contents)

## [#7 Testing settings](https://twitter.com/szubyak/status/955468985121886208)

1) Even if you don't write UI Tests, they still take considerable amount of time to run. Just skip it.
2) Enable code coverage stats in Xcode, it helps to find which method was tested, not tested, partly tested. But don’t pay too much attention to the percentage 😊.

![](../master/Sources/7/img.jpeg)

Back to [Top](https://github.com/Luur/SwiftTips#table-of-contents)

## [#6 Tips for writing error messages](https://twitter.com/szubyak/status/955054366419013632)

1) Say what happened and why
2) Suggest a next step
3) Find the right tone (If it’s a stressful or serious issue, then a silly tone would be inappropriate)

[Common​ ​Types​ ​of​ ​Error​ ​Messages](../master/Sources/6/Common​​Error​​Messages.pdf)

Back to [Top](https://github.com/Luur/SwiftTips#table-of-contents)

## [#5 Profit to compiler](https://twitter.com/szubyak/status/954329152160780288)

Do you know that using `map` gives profit to the compiler: it's now clear we want to apply some code to every item in an array, then like in `for` loop we could have `break` on halfway through.

Back to [Top](https://github.com/Luur/SwiftTips#table-of-contents)

## [#4 Combinations of pure functions](https://twitter.com/szubyak/status/953993641391017984)

`compactMap` func is effectively the combination of using `map` and `joined` in a single call, in that order. It maps items in array A into array B using a func you provide, then joins the results using concatenation.

Functions `min` and `max` could be also combinations of `sorted.first` and `sorted.last` in single call.

```swift
let colors = ["red", "blue", "black", "white"]

let min = colors.min() // black
let first = colors.sorted().first // black

let max = colors.max() // white
let last = colors.sorted().last // white
```

Back to [Top](https://github.com/Luur/SwiftTips#table-of-contents)

## [#3 Enumerated iteration](https://twitter.com/szubyak/status/951039299759362048)

Use `enumerated` when you iterate over the collection to return a sequence of pairs `(n, c)`, where `n` - index for each element and `c` - its value 👨‍💻💻
```swift
for (n, c) in "Swift".enumerated() {
    print("\(n): \(c)")
}
```
Result:

```
0: S
1: w
2: i
3: f
4: t
```

Also be careful with this tricky thing, `enumerated` on collection will not provide actual indices, but monotonically increasing integer, which happens to be the same as the index for Array but not for anything else, especially slices.

Back to [Top](https://github.com/Luur/SwiftTips#table-of-contents)

## [#2 Easy way to hide Status Bar](https://twitter.com/szubyak/status/950687583222337537)

Ever faced the problem that u can't hide status bar because of `prefersStatusBarHidden` is `get-only`? The simplest solution is to `override` it 🧐👨‍💻

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
