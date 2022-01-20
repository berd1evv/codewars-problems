//: [Previous](@previous)

import Foundation

var l: [Int] = []

var integers_list =  [1, 1, 2 ,3 ,1 ,2 ,3 ,4, 4, 3 ,5, 6, 7, 2, 8]
var digits_list = [1, 3, 4, 2]
var count = 0


func check(n: Int) {
    for i in integers_list {
        if i == n {
            integers_list.remove(at: count)
            count -= 1
        }
        count += 1
    }
}

for i in digits_list {
    check(n: i)
    count = 0
}

l = integers_list

print(l)
