import Foundation

/***
Have the function FirstFactorial(num) take the num parameter being passed and return the factorial of it 
(e.g. if num = 4, return (4 * 3 * 2 * 1)). For the test cases, the range will be between 1 and 18 and the input will always
 be an integer.
 ***/
func FirstFactorial(_ num: Int) -> Int { 
  var result = 1
  for i in 2...num {
      result *= i
  }
  return result
}

// recursive
func FirstFactorial(_ num: Int) -> Int {
  return num < 2 ? 1 : num * FirstFactorial(num - 1)
}

// using swift reduce
func FirstFactorial(_ num: Int) -> Int {
	return (1...num).reduce(1, *)
}

/***
Have the function SimpleAdding(num) add up all the numbers from 1 to num. 
For example: if the input is 4 then your program should return 10 because 1 + 2 + 3 + 4 = 10. 
For the test cases, the parameter num will be any number from 1 to 1000. 
***/
func SimpleAdding(_ num: Int) -> Int { 
 return num*(num+1)/2
}


/***
Create a function add(n)/Add(n) which returns a function that always adds n to any number
addOne = add(1)
addOne(3) // 4
***/

func add(_ n: Int) -> ((Int) -> Int) { 
  return { $0 + n }
}

// more readable
func add(_ n: Int) -> ((Int) -> Int) { 
  return { m in
    return m + n
  } 
}
