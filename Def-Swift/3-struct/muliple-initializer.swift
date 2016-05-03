struct Time {
    let in24h: Bool
    var hour = 0, min = 0

    // 1つめのイニシャライザ
    init(oHour: Int, oMin: Int) {
        in24h = false
        self.hour = oHour
        self.min = oMin
    }

    // 2つめのイニシャライザ
    init(hourIn24 h: Int) {
        in24h = true
        self.hour = h
    }

    // 3つめのイニシャライザ
    init(_ hour: Int) {
        self.init(hourIn24: hour)
    }
}

var a = Time(oHour: 11, oMin: 30)
var b = Time(hourIn24: 12)
var c = Time(13)
//var d = Time() <- error
//var e = Time(in24h: true, hour: 12, min: 0) <- error

