class Hoge {
    var msg: String = "hoge"
    func say() {
        print(msg)
    }
    deinit {
        print("deinit!")
    }
}

var hg1: Hoge! = Hoge()
unowned var hg2: Hoge = hg1
print(hg2) // Hoge
hg1 = nil
//print(hg2) <- error
