import Foundation

/*
 Welcome. In this kata, you are asked to square every digit of a number and concatenate them.

 For example, if we run 9119 through the function, 811181 will come out, because 92 is 81 and 1 is 1.

 Note: The function accepts an integer and returns an integer
 */

// MARK: - First Solution
func squareDigits(_ num: Int) -> Int {
    var str = ""
    for strN in String(num) {
        let number = Int(String(strN)) ?? 0
        str += String(number*number)
    }
    return Int(str) ?? 0
}

// MARK: - Second Solution
func squareDigits2(_ num: Int) -> Int {
    Int(String(num).compactMap { Int(String($0)) }.compactMap { String($0 * $0) }.joined()) ?? 0
}

