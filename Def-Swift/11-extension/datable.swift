protocol Datable {
    var year: Int { get }
    var month: Int { get }
    var day: Int { get }
}

// ツェラーの公式
func Zeller(var m:Int, _ d:Int, var _ y:Int) -> Int {
     if m < 3 {
          m += 12; --y
     }
     let leap = y + y / 4 - y / 100 + y / 400
     return (leap + (13 * m + 8) / 5 + d) % 7
}

extension Datable {
    var dayOfWeek: Int {
        return Zeller(month, day, year)
    }
}

struct Date : Datable {
    var year, month, day: Int
}

