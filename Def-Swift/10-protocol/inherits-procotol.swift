protocol Copyable {
    func copy() -> Self
}

class GeoPoint : Copyable, Equatable, CustomStringConvertible {
    let latitude: Double                    // 緯度
    let longitude: Double                   // 経度
    required init(lat:Double, lon:Double) { // 必須イニシャライザ
        self.latitude = lat
        self.longitude = lon
    }
    func copy() -> Self {
        let nw = self.dynamicType.init(lat:latitude, lon:longitude)
        return nw
    }
    var description: String {
        return "GeoPoint:\(latitude), \(longitude)"
    }
}

func == (lhs:GeoPoint, rhs:GeoPoint) -> Bool {
    return lhs.latitude == rhs.latitude && lhs.longitude == rhs.longitude
}

