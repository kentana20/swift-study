class USBCamera {
    private var focus = 2.0    // 絞りとシャッタースピードは設定可能
    private var shutterSpeed = 1.0 / 1000.0
    private func take() {      // 写真を撮る
        print("take a picture")
    }
}

class WebCamera : USBCamera {
    internal override var focus: Double {
        didSet { // 絞りに応じてシャッタースピードを設定
            super.shutterSpeed = ss(super.focus)
        }
    }
    internal private(set) override var shutterSpeed: Double {
        get { return super.shutterSpeed }
        set { super.shutterSpeed = newValue }
    }
    override init() { super.init() }        // overrideが必要
    override func take() { super.take() }   // 可視性はinternal
    private func ss(f:Double) -> Double {
        return (f * f) / 4000.0             // シャッタースピードを計算
    } // 明るい（fが小さい）ほどシャッタースピード（露光時間）を短くする
}

