class NPC {
    let name:String
    init(name:String) { self.name = name }
    deinit { print("deinit:", name) }
}

func floor2nd(m:Int, _ n:Int) throws -> Int {
    let npc2 = NPC(name:"Beta")
    defer { print("2: defer") }
    let p = try mod(m, n)
    return p
}

func floor1st(x:Int, _ y:Int) {
    do {
        let npc1 = NPC(name:"Alpha")
        defer { print("1: defer") }
        print( try floor2nd(x, y) )
    }catch {
        print("1: エラー", error)
    }
}

floor1st(10, 0)

