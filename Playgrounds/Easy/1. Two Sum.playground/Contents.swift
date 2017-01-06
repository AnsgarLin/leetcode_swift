/*:
 1 Two Sum

 Given an array of integers, return indices of the two numbers such that they add up to a specific target.

 You may assume that each input would have exactly one solution.

 ![sample](1.png)
 */
import UIKit

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var result: [Int] = []
        var map: [Int:Int] = [:] // Key->target - list[i] , value->list[i]

        for i in 0 ..< nums.count {
            if map[target - nums[i]] != nil {
                result.append(i)
                result.append(map[target - nums[i]]!)
            } else {
                map.updateValue(i, forKey: nums[i])
            }
        }

        return result
    }
}