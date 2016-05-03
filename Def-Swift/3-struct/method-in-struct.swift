struct Clock {
    var hour = 0
    var min = 0
    func time() -> Clock {
        return Clock(hour: hour, min: min)
    }

    mutating func advance(min: Int) {
        let m = self.min + min
        if m >= 60 {
            self.min = m % 60
            self.hour = (self.hour + m / 60) % 24
        } else {
            self.min = m
        }
    }

    func nonAdvande(min: Int) {
        //self.min += min <- error
    }

    static func isPm(h: Int) -> Bool {
        return h > 12
    }
}

