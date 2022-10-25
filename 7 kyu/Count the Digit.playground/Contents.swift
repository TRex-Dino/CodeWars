import Foundation

/*
 Take an integer n (n >= 0) and a digit d (0 <= d <= 9) as an integer.

 Square all numbers k (0 <= k <= n) between 0 and n.

 Count the numbers of digits d used in the writing of all the k**2.

 Call nb_dig (or nbDig or ...) the function taking n and d as parameters and returning this count.

 Examples:
 n = 10, d = 1
 the k*k are 0, 1, 4, 9, 16, 25, 36, 49, 64, 81, 100
 We are using the digit 1 in: 1, 16, 81, 100. The total count is then 4.

 nb_dig(25, 1) returns 11 since
 the k*k that contain the digit 1 are:
 1, 16, 81, 100, 121, 144, 169, 196, 361, 441.
 So there are 11 digits 1 for the squares of numbers between 0 and 25.
 Note that 121 has twice the digit 1.
 */

// MARK: - First Solution
func nbDig(_ n: Int, _ d: Int) -> Int {
    let arr = (0...n).map {$0 * $0}
    var number = 0
    for i in arr {
        if String(i).contains("\(d)") {
            for s in String(i) {
                if String(s) == "\(d)" {
                    number += 1
                }
            }
        }
    }
    return number
}

// MARK: - Second Solution
func nbDig2(_ n: Int, _ d: Int) -> Int {
    let k = (0 ... n)
    let ksq = k.map{ $0 * $0 }
    let kstrA = ksq.map{ "\($0)" }
    let kstr = kstrA.reduce("", +)
    let fkstr = kstr.filter{ "\($0)" == "\(d)" }
    return fkstr.count
}

// MARK: - One line Solution
func nbDig3(_ n: Int, _ d: Int) -> Int {
    return (0...n).map{"\($0 * $0)".filter { $0 == Character("\(d)")}}.flatMap { $0 }.count
}
