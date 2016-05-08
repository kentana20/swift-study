class A {
    class func show() { print("A") }
    class func who() { show() }
    func myclass() {
        self.dynamicType.who()  // dynamicType に注意！
    }
}

class B: A {
    override class func show() { print("B") }
}

var a = A()
var b = B()
a.myclass()
b.myclass()

