protocol DateType {
    var year: Int { get }
    var month: Int { get }
    var day: Int { get }
    var area: String? { get }
}

extension DateType {
    func toString() -> String {
        return "\(year). \(month). \(day)"
    }
}

protocol TimeType {
    var hour: Int { get }
    var minute: Int { get }
    var area: String? { get }
}

extension TimeType {
    func toString() -> String {
        var s = (hour < 10 ? " " : "") + "\(hour)"
        s += ":" + (minute < 10 ? "0" : "") + "\(minute)"
        if let a = area { s += " (\(a))" }
        return s
    }
}

struct Date : DateType, TimeType {
    let year, month, day: Int
    let hour, minute: Int
    let area: String?
    init(_ y:Int, _ m:Int, _ d:Int, _ t:(Int, Int), area:String? = nil) {
        year = y; month = m; day = d;
        (hour, minute) = t; self.area = area
    }
}
