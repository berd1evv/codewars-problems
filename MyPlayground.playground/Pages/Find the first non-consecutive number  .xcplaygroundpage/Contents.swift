//: [Previous](@previous)

import Foundation

var numbers = [1, 2, 3, 4, 5, 7, 8]
var k = 0
var j = 0


for i in numbers {
    if k != (i-1) {
        print(i)
        j = 11
    }
    k = i
    
}

if j != 11 {
    print("nil")
}
