private var localBuffer = [Int]()
internal var sharedBuffer = [String]()
public var spoolingBuffer = [Int]()

class Relic { // 指定しない場合は internal
    //public let name: String <- error (internalクラスにpublicは宣言できない)
    internal let age: String
    private let area: String

    init() {
        age = "30"
        area = "Tokyo"
    }
}
