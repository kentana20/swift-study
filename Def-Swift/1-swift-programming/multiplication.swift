for var i = 1; i <= 9; i++ {
    var line : String = ""
    for var j = 1; j <= 9; j++ {
        let n = i * j
        if n < 10 { line += " " }
        line += " \(n)"
    }
    print(line)
}
