enum FooError : ErrorType {
    case Baz, Ainz, Ooal
    case Calc(Int)
}

func div(a:Int, _ b:Int) throws -> Int {
    guard b != 0 else { throw FooError.Calc(0) }
    return a / b
}

func mod(a:Int, _ b:Int) throws -> Int {
    guard a != 0 else { throw FooError.Ainz }
    let d = try div(a, b)
    return a - b * d
}

func floor2nd(m:Int, _ n:Int) throws -> Int {
    var p = 0
    do {
        p = try mod(m, n)
    }catch FooError.Calc(let e) {
        print("2: エラー Calc(\(e))に対処")
    }
    // すべてのエラーに対応できてないので、↑でthrows の宣言が必要
    return p
}

func floor1st(x:Int, _ y:Int) {
    var k = 0
    do {
        k = try floor2nd(x, y)
    }catch FooError.Ainz {
        print("1: エラー Ainz")
    }catch {
        // ここでFooError以外のすべてのエラーに対応してるのでthrows の宣言は不要
        print("1: エラー", error)
    }
    print(k)
}

floor1st(9, 0) // divでエラー
print("---")
floor1st(0, 2) // modでエラー
