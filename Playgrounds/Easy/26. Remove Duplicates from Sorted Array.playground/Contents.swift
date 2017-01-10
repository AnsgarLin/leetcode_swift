/*:
 26 Remove Duplicates from Sorted Array

 Given a sorted array, remove the duplicates in place such that each element appear only once and return the new length.

 Do not allocate extra space for another array, you must do this in place with constant memory.

 For example,
 Given input array nums = [1,1,2],

 Your function should return length = 2, with the first two elements of nums being 1 and 2 respectively. It doesn't matter what you leave beyond the new length.
 */
import UIKit

class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.count < 2 { return nums.count };
        var length = 1 // Space O(1)
        for i in 1..<nums.count { // Time O(n)
            if nums[i] != nums[i-1] {
                nums[length] = nums[i]
                length += 1
            }
        }
        return length
    }
}
