/*:
 38 Count and Say

 The count-and-say sequence is the sequence of integers beginning as follows:

 1, 11, 21, 1211, 111221, ...

 1 is read off as "one 1" or 11.
 
 11 is read off as "two 1s" or 21.
 
 21 is read off as "one 2, then one 1" or 1211.
 
 Given an integer n, generate the nth sequence.

 Note: The sequence of integers will be represented as a string.
 */
import UIKit

/*:

 1. The first loop to get n-1'th string
 2. The second loop to scan the nth string, check char is the same or not
 3. if the same char, then increase the count. otherwise reset new char and count

 */

class Solution {
    func countAndSay(_ n: Int) -> String {
        if n == 1 {
            return "1"
        }

        var curr = "1"
        for _ in 2...n {
            var prev = curr
            curr = ""
            var count = 1
            var index = prev.index(prev.startIndex, offsetBy: 0)
            var char = prev[index]
            for j in 1..<prev.characters.count {
                index = prev.index(prev.startIndex, offsetBy: j)
                if char != prev[index] {
                    curr = "\(curr)\(count)\(char)"
                    count = 1 // reset count
                    char = prev[index] // reset new char
                } else {
                    count += 1 // increase the count
                }
            }
            curr = "\(curr)\(count)\(char)" // get n-1'th string
        }

        return curr
    }
}

Solution().countAndSay(5)