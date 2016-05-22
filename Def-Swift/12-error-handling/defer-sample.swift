import Foundation

func copyFile(path:String, to dest:String) -> Bool {
    let fpin = fopen(path, "r")
    guard fpin != nil else { return false }
    defer{ fclose(fpin) }  // 後で実行する
    let fpout = fopen(dest, "w")
    guard fpout != nil else { return false }
    defer{ fclose(fpout) } // 後で実行する
    while true {
        let ch = fgetc(fpin)
        if ch < 0 { break }
        fputc(ch, fpout)
    }
    return true
}

if copyFile("text.txt", to:"copy.txt") {
    print("success")
}else {
    print("failure")
}

