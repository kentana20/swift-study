#!/usr/bin/swift
var e = 0.0, t = 1.0
for var i = 1.0; i <= 20.0; i++ {
      e += t
          t /= i
}
print ("e=\(e)")

