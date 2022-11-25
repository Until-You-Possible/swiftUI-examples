import UIKit

var greeting = "Hello, playground"

print("greeting", greeting)


// if 和 if let
//如果常量是optional if 判断之后仍然需要解包 (!)

let name: String? = "arthur"
let age: Int? = 10

if name != nil && age != nil {
    //print(name) 报错 未解包
    //print(name!) 正确输出 arthur
}

// 如果常量是 Optional if let 之后不需要解包 {}内一定有值

if let nameNew = name,
    let ageNew = age {
    print(nameNew + String(ageNew))
}
// if var 可以修改值
if var nameNew = name,
    let ageNew = age {
    nameNew = "ray"
    print(nameNew + String(ageNew))
}
