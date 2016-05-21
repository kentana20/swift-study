enum FooError : ErrorType {
    case Baz, Ainz, Ooal
    case Calc(Int)
}

func convInt(s:String) throws -> Int? {
    if s == "" { throw FooError.Ooal }
    return Int(s)
}

for s in [ "41", "gown", "" ] {
    // if case let x? = try? convInt(s) も同じ。エラー発生を判断できる。
    if let x = try? convInt(s) {
        print("x:", x)
    }else {
        print("Failure")
    }
}

for s in [ "41", "gown", "" ] {
    if case let x?? = try? convInt(s) {
        print("x:", x)
    }else {
        print("Failure")
    }
}

for s in [ "41", "gown", "" ] {
    switch try? convInt(s) {
    case let x??: print("x??: x=\(x)")
    case nil?: print("nil?")
    case nil: print("nil")
    }
}

