/*:
 28 Implement strStr()

 Implement strStr().

 Returns the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.
 
 ex：
 haystack = "abcdede"
 needle = "de"，"de"第一次出現的位置為3

 */

import UIKit

class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        if needle.characters.count > haystack.characters.count {
            return -1
        }
        for i in 0...haystack.characters.count - needle.characters.count {
            let start = haystack.index(haystack.startIndex, offsetBy: i)
            let end = haystack.index(haystack.startIndex, offsetBy: i + needle.characters.count)
            let range = start..<end
            let subString = haystack.substring(with: range)
            if subString == needle {
                return i
            }
        }

        return -1
    }
}

Solution().strStr("mississippi", "a")
