//: [Previous](@previous)

import Foundation

func jumbledList(sentence: [String]) {
    var a: [String:String] = [:]
    for string in sentence {
        var integer: [String] = []
        
        for j in string {
            let i = String(j)
            if i == "1" || i == "2" || i == "3" ||  i == "4" || i == "5" || i == "6" || i == "7" || i == "8" || i == "9"{
                integer.append(i)
            }
            
        }
        let joiner = ""
        let joinedStrings = integer.joined(separator: joiner)
        
        a[joinedStrings] = string
    }
    let sortedTwo = a.sorted {
        return $0 < $1
    }
    for i in 0 ... sortedTwo.count - 1 {
        let b = sortedTwo[Int(exactly: i)!]
        print(b.value, terminator: " ")
    }
}

jumbledList(sentence: ["2a", "grea3t",
                       "l8earning",
                       "geeksfor9geeks",
                       "p6latform", "is1"])
