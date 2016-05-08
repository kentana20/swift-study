import Foundation

class FileAttr {
    let filename: String
    // 遅延格納型プロパティ
    lazy var size:Int = self.getFileSize()
    init(file: String) {
        filename = file
    }
    func getFileSize() -> Int {
        var buffer = stat()
        stat(filename, &buffer)
        print("[getFileSize]")
        return Int(buffer.st_size)
    }
}

let d = FileAttr(file:"/Users/kentana20/Desktop/363.png")
print(d.filename)
print(d.size) // getFileSize() が呼ばれる
print(d.size)

