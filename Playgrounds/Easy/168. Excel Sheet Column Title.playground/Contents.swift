/*:
 168 Excel Sheet Column Title

 Given a positive integer, return its corresponding column title as appear in an Excel sheet.

 ![sample](168.png)
 */
import UIKit

/*:

 1. ABC = 1x26^2 + 2x26^1 + 3
 2. ZZZ =26x26^2 + 26x26^1 + 26

 */


class Solution {
    func convertToTitle(_ n: Int) -> String {
        if n <= 0 { return "" }

        var result = ""
        var m = n
        while m > 0 {
            let codeNum = (m - 1) % 26
            let c = String(describing: UnicodeScalar(65 + codeNum)!)
            result = c + result

            m = Int((m - 1) / 26)
        }

        return result
    }
}

Solution().convertToTitle(29)
