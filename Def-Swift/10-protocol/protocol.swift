protocol Personal {
    var name: String { get }
    init(name: String)
    func sayHelloTo(p:Personal)
    func saySomething() -> String
}

class Citizen: Personal {
    let name: String
    required init(name: String) {
        self.name = name
    }
    func sayHelloTo(p: Personal) {
        print("どうも、 \(p.name) さん")
    }
    func saySomething() -> String {
        return "なるほど"
    }
}

var ct = Citizen(name: "kentana")
var ct2 = Citizen(name: "tanaken")
ct.saySomething() // なるほど
ct.sayHelloTo(ct2)
ct2.sayHelloTo(ct)

enum Sex { case Male, Female }       // 性別を表す列挙型
protocol HealthInfo: Personal {
    var weight: Double { get set }
    var height: Double { get set }
    var sex: Sex? { get }
}

