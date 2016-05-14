class Student {
    let name: String                 // 名前
    weak var club: Club?             // 弱い参照
    init(name:String) { self.name = name }
}

class Teacher {
    let name: String                 // 名前
    var subject: String? = nil       // 担当教科
    init(name:String) { self.name = name }
}

class Club {
    let name: String                 // 名前
    weak var teacher: Teacher?       // 弱い参照
    var budget = 0                   // 予算
    var members = [Student]()
    init(name:String) { self.name = name }
    func add(p:Student) {
        members.append(p)
        p.club = self
    }
    func legal() -> Bool {          // 公認クラブか？
        return members.count >= 5 && teacher != nil
    }
}

var who: Student? = Student(name: "kentana20")
//who!.club!.teacher!.name <- error

if let w = who {
    if let cl = w.club {
        if let tc = cl.teacher {
            print(tc.name)
        }
    }
}

// ↑をオプショナルチェーンで書くと↓

if let name = who?.club?.teacher?.name {
    print(name)
}

