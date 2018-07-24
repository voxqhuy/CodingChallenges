import Foundation

/***
Take an integer n (n >= 0) and a digit d (0 <= d <= 9) as an integer. Square all numbers k (0 <= k <= n) between 0 and n. Count the numbers of digits d used in the writing of all the k**2. Call nb_dig (or nbDig or ...) the function taking n and d as parameters and returning this count.
#Examples:
n = 10, d = 1, the k*k are 0, 1, 4, 9, 16, 25, 36, 49, 64, 81, 100
We are using the digit 1 in 1, 16, 81, 100. The total count is then 4.
***/

func nbDig(_ n: Int, _ d: Int) -> Int {
  var tally = 0
  var squares = ""
  for i in 0...n {
    squares += "\(i*i)"
  }
  for digit in squares {
      if Int(String(digit)) == d { tally += 1 }
  }
  return tally
}

// using ClosedRange, map, filter, and flatMap to turn a range into an array
func nbDig(_ n: Int, _ d: Int) -> Int {
    return (0...n).map{"\($0 * $0)".filter { $0 == Character("\(d)")}}.flatMap { $0 }.count
}

print(nb_dig(25, 1))		// return 11


/***
John bought potatoes: their weight is 100 kilograms. Potatoes contain water and dry matter.
The water content is 99 percent of the total weight. He thinks they are too wet and puts them in an oven - at low temperature - for them to lose some water.
At the output the water content is only 98%.
What is the total weight in kilograms (water content plus dry matter) coming out of the oven?
He finds 50 kilograms and he thinks he made a mistake: "So much weight lost for such a small change in water content!"
# Example
potatoes(99, 100, 98) --> 50
***/

func potatoes (_ p0: Int, _ w0: Int, _ p1: Int) -> Int {
    return (100 - p0) * w0 / (100 - p1)
}

