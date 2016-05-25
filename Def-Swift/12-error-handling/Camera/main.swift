var cam = WebCamera()
cam.focus = 4.0
print(cam.shutterSpeed)             // 0.004
cam.take()                          // "take a picture"
// cam.shutterSpeed = 1.0 / 1000.0  // エラー。この代入はできない。

