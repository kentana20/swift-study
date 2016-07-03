
var c1 = { () -> () in print("Hello") }

c1() // Hello

let c2 = { (a:Int, b:Int) -> Double in
    if b == 0 { return 0.0 }
        return Double(a) / Double(b)
}

c2(10, 5) // 2.0

var s1 = { () -> () in print("Hello1") }
var s2 = { () -> Void in print("Hello2") }
var s3 = { () in print("Hello3") }
var s4 = { print("Hello4") }

var clE: (Int, Int) -> Double!   //<- 戻り値がオプショナルになる
var cl1: ((Int, Int) -> Double)! //<- クロージャ変数自体がオプショナルになる

