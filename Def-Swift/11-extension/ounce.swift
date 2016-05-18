truct Ounce {
    var mL:Double = 0.0
    static let ounceUS = 29.5735
    init(ounce:Double) {
        self.ounce = ounce
    }
    var ounce: Double {
        get { return mL / Ounce.ounceUS }
        set { mL = newValue * Ounce.ounceUS }
    }
}

