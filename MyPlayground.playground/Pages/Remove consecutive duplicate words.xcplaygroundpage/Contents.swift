//: [Previous](@previous)

import Foundation

var arr = ["hello", "hello", "bir", "bir", "uch", "eki", "hello", "hello", "hello"]
var str = ""
var k = -1



for i in arr {
    k += 1
    if i == str {
        arr.remove(at: k)
        k -= 1
    }
    str = i
}

print(arr)

