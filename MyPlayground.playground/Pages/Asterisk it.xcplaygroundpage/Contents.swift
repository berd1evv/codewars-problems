//: [Previous](@previous)

import Foundation

var welcome:[Int] = [0,0,0,0]
var b = 0
var a = -1
var stringArray = welcome.map { String($0)}

for i in welcome {
    a += 1
    if (i+b)%2==0{
        stringArray.insert("*", at: a)
        a += 1
    }
    b = i
}

if stringArray[0] == "*" {
    stringArray.remove(at: stringArray.startIndex)
}

let string = stringArray.joined(separator: "")
print(string)
