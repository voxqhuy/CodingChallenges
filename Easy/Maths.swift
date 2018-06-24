// Have the function FirstFactorial(num) take the num parameter being passed and return the factorial of it (e.g. if num = 4, return (4 * 3 * 2 * 1)). For the test cases, the range will be between 1 and 18 and the input will always be an integer.

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