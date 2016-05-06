ass A : CustomStringConvertible {
    static var className : String { return "A" }  // 計算型タイププロパティ
    static var total = 0                          // 格納型タイププロパティ
    class var level : Int { return 1 }            // 計算型クラスプロパティ
    static func point() -> Int { return 1000 }    // タイプメソッド
    class func say() -> String { return "Ah." }   // クラスメソッド
    init() { ++A.total }
    var description: String {
        return "\(A.total): \(A.className), "
            + "Level=\(A.level), \(A.point())pt, \(A.say())"
    }
}

class B : A {
    // override static var className : String { return "B" }
    // 定義不可. error: class var overrides a 'final' class var
    // static var total = 0
    // 定義不可. error: cannot override with a stored property 'total'
    override class var level : Int { return 2 }
    // override static func point() -> Int { return 2000 }
    // 定義不可. error: class method overrides a 'final' class method
    override class func say() -> String { return "Boo" }
    override init() { super.init(); ++B.total }
    override var description: String {
        return "\(B.total): \(B.className), "
            + "Level=\(B.level), \(B.point())pt, \(B.say())"
    }
}

let a = A()
print(a)
let b = B()
print(b)

