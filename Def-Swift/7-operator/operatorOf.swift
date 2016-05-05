var z: UInt8 = 1

// オーバーフロー演算子
z - 1
//z - 2 <- error
z &- 2

// 剰余演算子
11 % 2.5
11.0 % 2.5

var x: Int = 10
x = 5
x % 2
x // 5
x %= 2 // 複合代入演算子
x // 1

// ビット演算子
func odd(i:Int) -> Bool { print(i); return i&1 == 1 }

var b = true
var c1 = b || odd(1)  // oddは実行されない
var c2 = !b && odd(3) // oddは実行されない

