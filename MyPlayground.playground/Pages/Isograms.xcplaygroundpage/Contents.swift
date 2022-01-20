//: [Previous](@previous)

import Foundation

func isogram(_ input:String) -> Bool {
    var string = input.lowercased()
    string = string.replacingOccurrences(of: " ", with: "")
    
    
    var bool = true
    let arr = Array(input.lowercased())

    for i in arr {
        let filtered = string.filter { $0 == i}
        if filtered.count != 1 {
            bool = false
        }

    }
    return bool

}

print(isogram("HeLO"))
