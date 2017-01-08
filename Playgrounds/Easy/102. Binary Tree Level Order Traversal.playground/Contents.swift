/*:
 102 Binary Tree Level Order Traversal

 Given a binary tree, return the level order traversal of its nodes' values. (ie, from left to right, level by level).

 For example:
 Given binary tree [3,9,20,null,null,15,7],

 ![sample](102.png)
 */
import UIKit


// Definition for a binary tree node.
public class TreeNode {
 public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
 }

class Solution {
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        if root == nil { return [] }
        var result: [[Int]] = []
        var queue = [root!]

        while queue.count > 0 {
            let leaveNum = queue.count // it is the key to determine the same level nodes
            var level: [Int] = []

            for _ in 0..<leaveNum {
                let curr = queue.first!
                queue.removeFirst()
                if curr.left != nil {
                    queue.append(curr.left!)
                }
                if curr.right != nil {
                    queue.append(curr.right!)
                }
                level.append(curr.val)
            }
            result.append(level)
        }

        return result
    }
}
