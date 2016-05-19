var str1: String = "hoge"
// str1.length <- error

extension String {
    var length: Int {
        return self.characters.count
    }
}

print(str1.length) // "4"

let overlord = "オーハ\u{3099}ーロート\u{3099}"
print(overlord, overlord.length) // "オーバーロード 7"
print(overlord.length)           // "7"

