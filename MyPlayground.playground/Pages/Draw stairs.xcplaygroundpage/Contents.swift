//: [Previous](@previous)

import Foundation

var n = 4

var b = "I\n "
var a = " "
for _ in 0...n - 2 {
    a = a + " "
    b = b + "I\n" + a

}

print(b)
