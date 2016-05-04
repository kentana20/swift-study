let m = ("monkey.jpg", 161_022)
let m2: (String, Int) = ("monkey.jpg", 161_022)

let cat: (String, Int, Int) = ("cat.jpg", 1024, 768)
var img = cat
//img = m2 <- error
var img2 = cat

print(cat.0) // cat.jpg
img.1 = 1920
// img == img2 <- error

// tupleの要素の一部だけを別の変数に代入する場合は以下のように書ける
let photo = ("tiger.jpg", 640, 800)
let (file, _, _) = photo

// tupleの要素にtupleを入れることもできる
let tupleInTaple = ("snake.jpg", (768, 1024))
let (file2, (w, h)) = tupleInTaple
tupleInTaple.1.1 // 1024
