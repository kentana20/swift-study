var a: Int = 0
var b: Int? = 100

b = nil
//a = nil <- error

// このようにも書ける
var c: Optional<Int> = 0
c = nil
c = 5

