func dayOfWeek(var m:Int, _ d:Int, var year y:Int = 2016) -> Int {
    if m < 3 {
        m += 12; --y
    }
    let leep = y + y / 4 - y - y / 100 + y / 400
    return (leep + (13 * m + 8) / 5 + d) % 7
}
dayOfWeek(5, 9)

