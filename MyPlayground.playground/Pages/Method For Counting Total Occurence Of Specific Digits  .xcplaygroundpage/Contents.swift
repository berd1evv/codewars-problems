//: [Previous](@previous)

import Foundation

extension StringProtocol  {
    var digits: [Int] { compactMap(\.wholeNumberValue) }
}

var l: [[Int]] = []
var m: [Int] = []

var integers_list =  [-18, -31, 81, -19, 111, -888]
var digits_list = [1, 8, 4]
var count = 0
var countDigits = 0
var stringArray = integers_list.map { String($0)}
var string = stringArray.joined(separator: "")
string = string.replacingOccurrences(of: "-", with: "")
let digits = string.digits

func check(n: Int) {
    for i in digits {
        if i == n {
            countDigits += 1
            count -= 1
        }
        count += 1
    }
}

for i in digits_list {
    check(n: i)
    m.append(i)
    m.append(countDigits)
    l.append(contentsOf: [m])
    m.removeAll()
    countDigits = 0
    count = 0
}

print(l)
