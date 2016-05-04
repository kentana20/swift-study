// Fibonacci in swift tuple
var fibo1 = 0, fibo2 = 1
var tp: (Int, Int, Int) = (fibo1, fibo2, 0)
print(tp.0, terminator: " ")
for _ in 0..<20 {
    tp.2 = tp.0
    tp.0 = tp.1
    tp.1 = tp.1 + tp.2
    print(tp.0, terminator:" ")
}
print("")

