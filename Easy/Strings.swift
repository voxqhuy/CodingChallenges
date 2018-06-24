import Foundation

/***
 Have the function LongestWord(sen) take the sen parameter being passed and return the largest word in the string. If there are two or more words that are the same length, return the first word from the string with that length. Ignore punctuation and assume sen will not be empty. 
 ***/

// using reduce
func longestWord1(_ sen: String) -> String { 
  
  // get the valid words
  let arr =  sen.components(separatedBy: CharacterSet.punctuationCharacters).joined()
                .components(separatedBy: CharacterSet.whitespaces)
  // get the longest word
  return arr.reduce("", {
      $1.count > $0.count ? $1 : $0
  })
}

// using max
func longestWord2(_ sen: String) -> String { 
  
  // get the valid words
  let arr =  sen.components(separatedBy: CharacterSet.punctuationCharacters).joined()
                .components(separatedBy: CharacterSet.whitespaces)
                
  // get the longest word
  return arr.max {
      a, b in a.count < b.count
  }!
}

// using sort
func longestWord3(_ sen: String) -> String { 
  
  // get the valid words
  let arr =  sen.components(separatedBy: CharacterSet.punctuationCharacters).joined()
                .components(separatedBy: CharacterSet.whitespaces)
                
  // get the longest word
  let sortedArr = arr.sorted() {
      $0.count > $1.count
  }
  
  return sortedArr[0]
}

print(longestWord1("fun&!! time")) // time
print(longestWord1("I love dogs")) // love

print(longestWord2("fun&!! time")) // time
print(longestWord2("I love dogs")) // love

print(longestWord3("fun&!! time")) // time
print(longestWord3("I love dogs")) // love


/***
Have the function FirstReverse(str) take the str parameter being passed and return the string in reversed order. For example: if the input string is "Hello World and Coders" then your program should return the string "sredoC dna dlroW olleH" 
***/ 

func FirstReverse1(_ str: String) -> String { 
  var result = "" 
  for character in str {
    result = "\(character)" + result
  }  
  return result        
}

// using Swift reversed
func FirstReverse2(_ str: String) -> String { 
  return String(str.reversed())       
}

print(FirstReverse1("Hello World and Coders")) // "sredoC dna dlroW olleH" 
print(FirstReverse2("Hello World and Coders")) // "sredoC dna dlroW olleH" 