/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        guard let root = root else { return nil }

        let invertRoot = TreeNode(root.val)
        var parents: [(TreeNode, TreeNode)] = [(root, invertRoot)]

        while parents.isEmpty == false {
            let (current, invertCurr) = parents.removeLast()

            if let left = current.left {
                invertCurr.right = TreeNode(left.val)
                parents.append((left, invertCurr.right!))
            }

            if let right = current.right {
                invertCurr.left = TreeNode(right.val)
                parents.append((right, invertCurr.left!))
            }
        }

        return invertRoot
    }
}
