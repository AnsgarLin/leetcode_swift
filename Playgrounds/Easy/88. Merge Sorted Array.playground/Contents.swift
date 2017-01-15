/*:
 88 Merge Sorted Array

 Given two sorted integer arrays nums1 and nums2, merge nums2 into nums1 as one sorted array.

 Note:

 You may assume that nums1 has enough space (size that is greater or equal to m + n) to hold additional elements from nums2. The number of elements initialized in nums1 and nums2 are m and n respectively.
 */
import UIKit

class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var i = nums1.count - 1
        var j = nums2.count - 1
        var k = m + n - 1
        while i > -1 && j > -1 {
            nums1[k] = nums1[i] > nums2[j] ? nums1[i] : nums2[j]
            k -= 1
            i -= 1
            j -= 1
        }

        while j > -1 {
            nums1[k] = nums2[j]
            k -= 1
            j -= 1
        }
    }
}
