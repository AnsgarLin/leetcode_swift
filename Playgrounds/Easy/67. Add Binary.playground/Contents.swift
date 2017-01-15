/*:
 67 Add Binary

 Given two binary strings, return their sum (also a binary string).

 For example,

 a = "11"
 
 b = "1"
 
 Return "100".

 */

import UIKit

class Solution {
    // http://geekbing.com/2016/07/31/LeetCode-67-Add-Binary/

    func addBinary(_ a: String, _ b: String) -> String {
        // find min length
        let lengthA = a.characters.count
        let lengthB = b.characters.count
        let short = lengthA <= lengthB ? lengthA : lengthB

        // reverse a & b to get [char]
        let reverseArrA: [Character] = a.characters.reversed()
        let reverseArrB: [Character] = b.characters.reversed()

        // handle 0..<short 
        var carry = 0
        var ans = [Character]()
        for i in 0..<short {
            let numA = Int("\(reverseArrA[i])")
            let numB = Int("\(reverseArrB[i])")
            ans.append(Character("\((numA! + numB! + carry) % 2)"))
            carry = (numA! + numB! + carry) / 2
        }

        if lengthA > lengthB {
            for i in short..<lengthA {
                let numA = Int("\(reverseArrA[i])")
                ans.append(Character("\((numA! + carry) % 2)"))
                carry = (numA! + carry) / 2
            }
            if carry == 1 {
                ans.append(Character("1"))
            }
        }

        else if lengthA < lengthB {
            for i in short..<lengthB {
                let numB = Int("\(reverseArrB[i])")
                ans.append(Character("\((numB! + carry) % 2)"))
                carry = (numB! + carry) / 2
            }
            if carry == 1 {
                ans.append(Character("1"))
            }
        }

        else {
            if carry == 1 {
                ans.append(Character("1"))
            }
        }

        return String(ans.reversed())
    }
}