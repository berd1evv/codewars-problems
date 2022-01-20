//: [Previous](@previous)

import Foundation

func mumbling(_ str: String) -> String {
    return str.enumerated().map {
        repeatElement(String($1), count: $0 + 1)
            .joined()
            .capitalized
    }
        .joined(separator: "-")
}

print(mumbling("abcd"))
