//: [Previous](@previous)

import Foundation

extension String: Error {}

func guessNumber(life: Int) throws -> Bool {
    var userLife = life
    let rand = Int.random(in: 1..<10)

    while userLife != -2 {
        print("Guess the correct number: ")
        let input = readLine()
        let int = Int(input!)
        if int == rand{
            print("true")
        } else if int != rand {
            userLife -= 1
            print("false")
        }
        
        if userLife == 0 {
            throw "Too many guesses!"
        }
    }

    
    return true
}

try guessNumber(life: 3)
