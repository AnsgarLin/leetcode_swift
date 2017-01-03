/*: 
 234 Palindrome Linked List

 Given a singly linked list, determine if it is a palindrome.

 Follow up: Could you do it in O(n) time and O(1) space?
*/

import UIKit

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

/*:

 1. find the middle node of the singly linked list
 2. revesrse the singly linked list from middle node to the last node
 3. check the node vale equality between the first half of the list and the reverse list

 */

class Solution {
    func isPalindrome(_ head: ListNode?) -> Bool {
        guard var _ = head else {
            return true
        }

        var head = head
        let middle = findMiddle(head)
        var rNode = reverseNode(middle)

        while rNode != nil {
            if head!.val != rNode!.val {
                return false
            }
            head = head?.next
            rNode = rNode?.next
        }

        return true
    }

    func findMiddle(_ head: ListNode?) -> ListNode? {
        var fast = head
        var slow = head

        // O(n) time
        while fast != nil && slow != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }

        return slow
    }

    func reverseNode(_ middle: ListNode?) -> ListNode? {
        var prev: ListNode?
        var temp: ListNode? // O(1) space
        var cur = middle

        // O(n) time
        while cur != nil {
            temp = cur
            cur = cur?.next
            temp?.next = prev
            prev = temp
        }

        return prev
    }
}
