class Time {
    var hour = 0, min = 0
    init(hour:Int, min:Int) {       // 全項目イニシャライザは使えない
        self.hour = hour; self.min = min
    }
    func add(min:Int) {             // mutatingは書かない
        let m = self.min + min
        if m >= 60 {
            self.min = m % 60
            let t = self.hour + m / 60
            self.hour = t % 24
        }else{
            self.min = m
        }
    }
    func inc() {                    // mutatingは書かない
        self.add(1);
    }
    func toString() -> String {
        let h = hour < 10 ? " \(hour)":"\(hour)"
        let m = min < 10 ? "0\(min)":"\(min)"
        return h + ":" + m
    }
}

// Timeを継承、プロトコルを採用
class Time12 : Time, CustomStringConvertible {
    var pm:Bool                       // 新しいインスタンス変数。午後なら真
    init(hour:Int, min:Int, pm:Bool) {// 新しいイニシャライザ
        self.pm = pm
        super.init(hour:hour, min:min)
    }   // スーパークラスのイニシャライザを呼び出して使う
    override convenience init(hour:Int, min:Int) { // 24時制
        let isPm = hour >= 12
        self.init(hour:isPm ? hour - 12 : hour, min:min, pm:isPm)
    }   // スーパークラスのイニシャライザを上書きする
    override func add(min:Int) {    // メソッドを上書き
        super.add(min)              // スーパークラスのメソッド
        while hour >= 12 {          // hourはスーパークラスの定義
            hour -= 12
            pm = !pm
        }
    }
    var description : String {// スーパークラスのメソッドを利用
        return toString() + " " + (pm ? "PM" : "AM")
    }
}

var array = [Time]()                      // Time型の配列
array.append(Time(hour:13, min:10))
array.append(Time12(hour:13, min:20))
array.append(Time12(hour:1, min:30, pm:true))
for t in array {
    if t is Time12 { print(t) }           // Time12型なら printを使う
    else {
        print(">", t.toString())          // そうでなければ先頭に">"を印字
    }
}
//let v = array[1] as! Time12
//print(v.pm ? "PM" : "AM")

if let u = array[2] as? Time12 {          // オプショナル束縛構文
    print(u.pm ? "PM" : "AM")             // Time12型として扱う
}

