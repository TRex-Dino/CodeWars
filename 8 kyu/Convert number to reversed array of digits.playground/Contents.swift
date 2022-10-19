import Foundation

/*
 Convert number to reversed array of digits
 Given a random non-negative number, you have to return the digits of this number within an array in reverse order.

 Example(Input => Output):
 35231 => [1,3,2,5,3]
 0 => [0]
 */

// MARK: - First Solution

func digitize(_ num:Int) -> [Int] {
    let str = "\(num)"
    var arr = [Int]()
    for i in str {
        arr += [Int(String(i)) ?? 0]
    }
    return arr.reversed()
}

// MARK: - Smart Solution
func digitize2(_ num:Int) -> [Int] {
    String(num).characters.flatMap { Int(String($0)) }.reversed()
}
