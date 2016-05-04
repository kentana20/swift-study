enum Direction {
    case Up, Down, Right, Left
    func clockwise() -> Direction {
        switch self {
        case Up:    return Right
        case Down:  return Left
        case Right: return Down
        case Left:  return Up
        }
    }

    mutating func changeClock() {
        switch self {
        case Up: self = Right
        case Down: self = Left
        case Right: self = Down
        case Left:  self = Up
        }
    }
}

let d = Direction.Up
var d2 = Direction.Up
d.clockwise()
print(d) // 値は変わらない
//d.changeClock() <- error
d2.changeClock() // ここで値を変更(Up -> Right)
print(d2)

