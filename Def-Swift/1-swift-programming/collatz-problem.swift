var n = 7
repeat {
    print("\(n) ", terminator:"")
    if n % 2 == 0 {
        n /= 2
    } else {
        n = n * 3 + 1
    }
} while n > 1
print(n)

