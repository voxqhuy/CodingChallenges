/***
Given two arrays a and b write a function comp(a, b) (compSame(a, b) in Clojure) that checks whether the two arrays have the "same" elements, with the same multiplicities. "Same" means, here, that the elements in b are the elements in a squared, regardless of the order.
++ Valid arrays
a = [121, 144, 19, 161, 19, 144, 19, 11]  
b = [121, 14641, 20736, 361, 25921, 361, 20736, 361]

-- Invalid arrays
If we change the first number to something else, comp may not return true anymore:
a = [121, 144, 19, 161, 19, 144, 19, 11]  
b = [132, 14641, 20736, 361, 25921, 361, 20736, 361]
comp(a,b) returns false because in b 132 is not the square of any number of a.

a = [121, 144, 19, 161, 19, 144, 19, 11]  
b = [121, 14641, 20736, 36100, 25921, 361, 20736, 361]
comp(a,b) returns false because in b 36100 is not the square of any number of a.
***/

func comp(_ a: [Int], _ b: [Int]) -> Bool {
    var squaredA = a.map { $0*$0 }
    for number in b {
      if let index = squaredA.index(of: number) {
        squaredA.remove(at: index)
      } else {
        return false 
      }
    }
    return true
}

// best practice
func comp(_ a: [Int], _ b: [Int]) -> Bool {
    var squaredA = a.map { $0*$0 }
    return squaredA.sorted() == b.sorted()
}

// shorter
func comp(_ a: [Int], _ b: [Int]) -> Bool {
    return a.map{ $0*$0 }.sorted() == b.sorted()
}