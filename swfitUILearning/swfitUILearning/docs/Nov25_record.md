# concepts

## 函数与闭包(closure)

```swift
函数是第一等类型。函数可以作为另一个函数的返回值

func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7)
```

```swift
函数也可以当作参数传入另一个函数

func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 7, 12]
hasAnyMatches(list: numbers, condition: lessThanTen)
```

---

```swift
函数实际上是一种特殊的闭包： 它是一段能之后被调用的代码。 closure中的代码能访问closure中
的变量和方法。可以使用 **{}** 来创建一个匿名闭包。使用 in 将参数和返回值类型的声明与函数闭包体
进行分离

numbers.map({ (number: Int) -> Int in
    let result = 3 * number
    return result
})
```

```swift
当一个闭包作为最后一个参数传给一个函数的时候，它可以直接跟在圆括号后面。当一个闭包是传给函数的唯一参数，

let sortedNumbers = numbers.sorted { $0 > $1 }
print(sortedNumbers)
```

## class and struct

```swift
使用struct来创建一个结构体，结构体和类有很多相同的地方。包括方法和构造器，最大的区别就是结构体是传值，类是传引用。
```

## protocol and extension

```swift
使用protocol来声明一个协议

protocol ExampleProtocol {
    var simpleDesc: String { get }
    mutating func adjust()
}

class, enum, struct 都可以 conform protocol

使用extension来为现有的类型添加功能，比如新的方法和计算属性，可以使用扩展让某个在别处声明的类型来遵守某个协议。这同样适用于从外部库或者框架引入的类型

example:

extension Int: ExampleProtocol {
    var simpleDescription: String {
        return "The number \(self)"
    }
    mutating func adjust() {
        self += 42
    }
}
print(7.simpleDescription)
```

## Handle Error

```swift
适用Error 的类型来表示错误

enum PrinterError: Error {
    case outOfPaper
    case noToner
    case onFire
}
使用throw来跑出一个错误和使用throws来表示一个可以抛出错误的函数，如果在函数中抛出一个错误，这个函数会立刻返回并调用该函数的代码会进行错误处理

func send(job: Int, toPrinter printerName: String) throws -> String {
    if printerName == "Never Has Toner" {
        throw PrinterError.noToner
    }
    return "Job sent"
}

错误处理方式。do catch
另一种方式是适用 try? 将结果转换为可选的。如果函数抛出错误。改错误会被抛弃并且结果为nil
否则。结果会是一个包含函数返回值的可选值

let printerSuccess = try? send(job: 1884, toPrinter: "Mergenthaler")
let printerFailure = try? send(job: 1885, toPrinter: "Never Has Toner")

```

```swift
使用 defer 代码块来表示函数返回前，函数中最后执行的代码。无论是函数是否会错。这段代码都会被执行

var fridgeIsOpen = false
let fridgeContent = ["milk", "eggs", "leftovers"]

func fridgeContains(_ food: String) -> Bool {
    fridgeIsOpen = true
    defer {
        fridgeIsOpen = false
    }
    
    let result = fridgeContent.contains(food)
    return result
}
fridgeContains("banana")
print(fridgeIsOpen)
```


