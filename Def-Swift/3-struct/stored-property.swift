var serialNumber = 2127

struct LCD {
    struct Size { var width, height : Int }
    static var stdHeight = 1080
    static var stdWidth = 1920
    static var stdSize = Size(width: stdWidth, height:stdHeight )
    var size: Size
    let serial = "CZ:\(++serialNumber)"
    init(_ w:Int, _ h:Int) {
        size = Size(width: w, height: h)
    }
}

let small = LCD(800, 600)
print(small.serial)
LCD.stdHeight = 1200
print(LCD.stdSize)
LCD.stdWidth = 2560
print(LCD.stdSize)

