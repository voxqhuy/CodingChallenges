// Have the function FirstReverse(str) take the str parameter being passed and return the string in reversed order. For example: if the input string is "Hello World and Coders" then your program should return the string sredoC dna dlroW olleH. 

func FirstReverse(_ str: String) -> String { 
  var result = "" 
  for character in str {
    result = "\(character)" + result
  }  
  return result        
}

// using Swift reversed
func FirstReverse(_ str: String) -> String { 
  return String(str.reversed())       
}