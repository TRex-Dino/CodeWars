import Foundation

/*
 Given an array of integers as strings and numbers, return the sum of the array values as if all were numbers.

 Return your answer as a number.
 */

// MARK: - First Solution
func sumMix(_ arr: [Any]) -> Int {
    let int = arr.compactMap { $0 as? Int }.reduce(0, +)
    let str = arr.compactMap { $0 as? String }.compactMap{ Int($0) }.reduce(0, +)
    return int + str
}

// MARK: - Second Solution
func sumMix2(_ arr: [Any]) -> Int {
    arr.map{ $0 as? Int ?? Int($0 as? String ?? "0")! }.reduce(0, +)
}

// MARK: - Smart Solution
func sumMix3(_ arr: [Any]) -> Int {
    arr.reduce(0) { $0 + (Int("\($1)") ?? 0) }
}
