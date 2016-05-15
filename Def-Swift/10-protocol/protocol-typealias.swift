protocol VectorType {
    typealias Element
    var x : Element { get set }
    var y : Element { get set }
}

struct VectorFloat : VectorType {
    var x, y: Float
    func convToDouble() -> VectorDouble {
        return VectorDouble(
            x: VectorDouble.Element(x),
            y: VectorDouble.Element(y))
    }
}
struct VectorDouble : VectorType, CustomStringConvertible {
    var x, y: Double
    var description: String { return "[\(x), \(y)]" }
}
struct VectorGrade : VectorType {
    enum Element { case A, B, C, D, X }
    var x, y: Element
}

var a = VectorFloat(x: 10.0, y: 12.0)
print("x:\(a.x), y:\(a.y)")
let b = a.convToDouble()
print(b) // [10.0, 12.0]
var g = VectorGrade(x: .A, y: .C)
print(g) // VectorGrade(x: VectorGrade.Element.A, y: VectorGrade.Element.C)

