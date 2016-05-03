struct Ounce {
    var ml: Double = 0.0
    static let ounceUS = 29.5735

    var ounce: Double {
        get { return ml / Ounce.ounceUS }
        set { ml = newValue * Ounce.ounceUS }
    }

    init(ounce: Double) {
        self.ounce = ounce
    }
}

var a = Ounce(ounce: 1.5)
a.ml // 44.3625
a.ounce = 3 // ounce代入によってmlも値が変わる
a.ml // 88.7205
a.ounce // 3
