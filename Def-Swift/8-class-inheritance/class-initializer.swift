// Zellers congruence
func dayOfWeek(var m:Int, let _ d:Int, var year y:Int) -> Int {
    if m < 3 {
        m += 12; --y
    }
    let leap = y + y / 4 - y / 100 + y / 400
    return (leap + (13 * m + 8) / 5 + d) % 7
}

// base class
class DayOfMonth : CustomStringConvertible {
    var month, day: Int
    init(month:Int, day:Int) {
        self.month = month; self.day = day
    }
    var description: String {
        return DayOfMonth.twoDigits(month)
            + "/" + DayOfMonth.twoDigits(day)
    }
    class func twoDigits(n:Int) -> String {
        let i = n % 100
        if (i < 10) { return "0\(i)" }
        return "\(i)"
    }
}

// sub class1
class Date: DayOfMonth {
    var year: Int
    var dow: Int
    init(_ y:Int, _ m:Int, _ d:Int) {
        year = y
        dow = dayOfWeek(m, d, year: y)
        super.init(month: m, day: d)
    }
}

// sub class2
class DateW : Date {
    static let namesOfDay = [
        "Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat" ]
    var dweek = String()

    // 指定イニシャライザ(スーパークラスのイニシャライザと引数が同じなのでoverrideする)
    override init(_ y:Int, _ m:Int, _ d:Int) {
        super.init(y, m, d)
        dweek = DateW.namesOfDay[dow]
    }

    // 簡易イニシャライザ
    convenience init(_ m: Int, _ d:Int, year:Int = 2016) {
        self.init(year, m, d)
    }

    // プロパティオブザーバ(didSetなので、dayの値が変更した直後に発動する)
    override var day:Int {
        didSet {
            dow = dayOfWeek(month, day, year:year)
            dweek = DateW.namesOfDay[dow]
        }
    }

    // printで呼ばれるプロパティの上書き(本質ではない)
    override var description: String {
        return "\(year)/" + super.description + " (\(dweek))"
    }
}

var d = DateW(1991, 5, 8)
print(d, terminator:"") // 1991/05/08(Wed)
d.day++
print(d, terminator:"") // 1991/05/09(Thu)

