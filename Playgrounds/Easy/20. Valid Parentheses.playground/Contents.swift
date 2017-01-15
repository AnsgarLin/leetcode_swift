/*:
20 Valid Parentheses
 
 Given a string containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

 The brackets must close in the correct order, "()" and "()[]{}" are all valid but "(]" and "([)]" are not.

 */
import UIKit

class Solution {
    func isValid(_ s: String) -> Bool {
        var stack: [Character] = []
        for c in Array(s.characters) {
            if (c == "(") || (c == "[") || (c == "{") {
                stack.insert(c, at: 0)
            } else if c == ")" && !stack.isEmpty && stack.first! == "(" {
                stack.removeFirst()
            } else if c == "}" && !stack.isEmpty && stack.first! == "{" {
                stack.removeFirst()
            } else if c == "]" && !stack.isEmpty && stack.first! == "[" {
                stack.removeFirst()
            } else {
                return false
            }
        }

        return stack.isEmpty
    }
}

Solution().isValid("([)]")
