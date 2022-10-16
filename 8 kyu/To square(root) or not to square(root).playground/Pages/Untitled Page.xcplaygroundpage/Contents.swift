import Foundation

/*
 Write a method, that will get an integer array as parameter and will process every number from this array.

 Return a new array with processing every number of the input-array like this:

 If the number has an integer square root, take this, otherwise square the number.

 Example
 [4,3,9,7,2,1] -> [2,9,3,49,4,1]
 Notes
 The input array will always contain only positive numbers, and will never be empty or null.
 */
// MARK: - work but not in cite
func squareOrSquareRoot(_ input: [Int]) -> [Int] {
    var wholeNumberPart: Double = 0.0
    var array = [Int]()
    for i in input {
        let new = modfl(Double(i), &wholeNumberPart)
        array.append(new == 0.0 ? Int(wholeNumberPart) : Int(i * i))
    }
    
    return array
}

// MARK: - Second Solution
func squareOrSquareRoot2(_ input: [Int]) -> [Int] {
    var array = [Int]()
    for i in input {
        let new = Double(i).squareRoot()
        array.append(new.rounded() == new ? Int(new) : i*i)
    }
    
    return array
}
squareOrSquareRoot2([1,2,4,6])
