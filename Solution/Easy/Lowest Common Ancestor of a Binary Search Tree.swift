/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */

class Solution {
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {

        guard let p, let q else {
            return nil
        }

        var currNode = root
        while let node = currNode {

            // p, q is both in left tree
            if p.val < node.val && q.val < node.val {
                currNode = currNode?.left
                continue
            }

            // p, q is both in right tree
            if node.val < p.val && node.val < q.val {
                currNode = node.right
                continue
            }

            return currNode
        }

        return nil
    }
}