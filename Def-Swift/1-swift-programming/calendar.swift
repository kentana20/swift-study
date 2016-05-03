#!/usr/bin/swift
let days = 31
let firstDay = 2
var w = 0

for ; w < firstDay; w++ {
    print("    ", terminator:"")
}

var d = 1
loop: while true {
    for ; w < 7; w++ {
        let pad = d < 10 ? " " : ""
        print(pad + "  \(d)", terminator:"")
        if ++d > days {
            print("")
            break loop
        }
    }
    print("")
    w=0
}

