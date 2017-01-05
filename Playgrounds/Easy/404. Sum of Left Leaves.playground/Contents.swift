/*:
 404 Sum of Left Leaves

 Find the sum of all left leaves in a given binary tree.

 ![sample](404.png)
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

/*:

 1. using DFS to scan the tree, and insert node in the stack
 2. pop stack and check the left leaves node

 */

class Solution {
    func sumOfLeftLeaves(_ root: TreeNode?) -> Int {
        if root == nil { return 0 }
        var ans = 0
        var stack: [TreeNode] = [root!]

        while !stack.isEmpty {
            let node = stack.first!
            stack.removeFirst()
            if node.left != nil {
                // left leaves
                if node.left!.left == nil && node.left!.right == nil  {
                    ans += node.left!.val
                } else {
                    stack.append(node.left!)
                }
            }
            if node.right != nil {
                // non leave node
                if node.right!.left != nil || node.right!.right != nil {
                    stack.append(node.right!)
                }
            }
        }

        return ans
    }
}
