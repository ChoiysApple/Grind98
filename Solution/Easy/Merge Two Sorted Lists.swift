/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {

        let startNode = ListNode()
        var currentNode = startNode
        var remain1 = list1
        var remain2 = list2

        while let node1 = remain1, let node2 = remain2 {
            if node1.val < node2.val {
                currentNode.next = node1
                remain1 = node1.next
                currentNode = node1
            } else {
                currentNode.next = node2
                remain2 = node2.next
                currentNode = node2
            }
        }

        currentNode.next = remain1 ?? remain2
        
        return startNode.next
    }
}
