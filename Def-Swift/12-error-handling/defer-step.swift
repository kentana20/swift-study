func doit(a: Int) {
    var n = 0
    defer { print(1, n) }
    if a == 0 { return }
    defer { print(2, "oops") }
    n = a
}

doit(0)
print("----")
doit(99)

// 1 0
// -----
// 2 oops <- ここの順番に注意
// 1 99

