import Foundation

/*
 Your goal is to return multiplication table for number that is always an integer from 1 to 10.

 For example, a multiplication table (string) for number == 5 looks like below:
 1 * 5 = 5
 2 * 5 = 10
 3 * 5 = 15
 4 * 5 = 20
 5 * 5 = 25
 6 * 5 = 30
 7 * 5 = 35
 8 * 5 = 40
 9 * 5 = 45
 10 * 5 = 50
 */

// MARK: - First solution
func multiTable(_ number: Int) -> String {
    (1...10).map{ "\($0) * \(number) = \($0 * number)" }.joined(separator: "\n")
}

// MARK: - Second solution
func multiTable2(_ number: Int) -> String {
    var multiplicationTable = ""
    for num in 1...10 {
        multiplicationTable += ("\(num) * \(number) = \(number * num)\(num != 10 ? "\n" : "")")
    }
    return multiplicationTable
}
