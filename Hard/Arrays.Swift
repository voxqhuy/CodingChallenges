import Foundation

/***
Fold an array "times" times
Fold 1-times:
[1,2,3,4,5] -> [6,6,3]

A little visualization (NOT for the algorithm but for the idea of folding):

 Step 1         Step 2        Step 3       Step 4       Step5
                     5/           5|         5\          
                    4/            4|          4\      
1 2 3 4 5      1 2 3/         1 2 3|       1 2 3\       6 6 3
----*----      ----*          ----*        ----*        ----*


Fold 2-times:
[1,2,3,4,5] -> [9,6]
***/

func foldArray(_ arr: [Int], times: Int) -> [Int] {
  var foldedArray = [Int]()
  while times > 0 {
    
    for index in 0..<(arr.count / 2) {
      foldedArray.append(arr[index] + arr[arr.count - 1 - index])
    }
    // if the array has an odd number of elements
    if arr.count % 2 == 1 {
      // append the middle element
      foldedArray.append(arr[arr.count / 2])
    }
    let nextFoldedArray = foldArray(foldedArray, times: times - 1)
    if !nextFoldedArray.isEmpty  {
      foldedArray = nextFoldedArray
    }
    break;
  }
  return foldedArray
}

foldArray([1,2,3,4,5], times: 1)			// return [6,6,3]
foldArray([ 1, 2, 3, 4, 5, 99, 88, 78, 74, 73 ], times: 5)		// return [427]
foldArray([-9,9,-8,8,66,23], times: 1)		// return [14,75,0]
foldArray([ 2 ], times: 20)					// return [2]