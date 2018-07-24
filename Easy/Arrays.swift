import Foundation

/***
If the number has an integer square root, take this, otherwise square the number.
[4,3,9,7,2,1] -> [2,9,3,49,4,1]
***/

func squareOrSquareRoot(_ input: [Int]) -> [Int] {
  return input.map { i in
    let sqroot = sqrt(Double(i))
    return sqroot.truncatingRemainder(dividingBy: 1).isZero ? Int(sqroot) : i*i
  }
}