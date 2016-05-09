class Person : CustomStringConvertible {
    let name:String                  // 名前
    var age:Int                      // 年齢
    init(name:String, age:Int) {
        self.name = name; self.age = age
    }
    var description: String {
        return "\(name), \(age)"
    }
    deinit {  // インスタンスが解放される直前に呼び出される
        print("\(name): deinit")
    }
}

var yuta:Person! = Person(name:"勇太", age:16)
print(yuta)
var x:Person! = yuta
x.age++
print(yuta)
print(yuta === x)
yuta = nil
x = nil

