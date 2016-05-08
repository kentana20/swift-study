class ICCard {
    static let Deposit = 500
    var money = 0
    required init(charge:Int) {
        money = charge - ICCard.Deposit
    }
}

class Icocai : ICCard {
    static var serial = 0
    let idnumber: Int
    init(id:Int, money:Int) {
        idnumber = id
        super.init(charge:money)
    }
    required init(charge:Int) {
        idnumber = ++Icocai.serial
        super.init(charge:charge)
    }
}

class Suiica : ICCard {
    var name = String()
}

var card = Suiica(charge:2000)
print(card.money) // 1500

var mycard = Icocai(charge:2000)
print(mycard.money) // 1500

