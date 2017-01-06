/*:

 The Hamming distance between two integers is the number of positions at which the corresponding bits are different.

 Given two integers x and y, calculate the Hamming distance.

 ![sample](461.png)
 */
import UIKit

class Solution {
    func hammingDistance(_ x: Int, _ y: Int) -> Int {
        let difference = x ^ y

        // https://developer.apple.com/reference/swift/string/1640980-init
        return String(difference, radix: 2).characters.filter{ $0 == "1"}.count
    }
}