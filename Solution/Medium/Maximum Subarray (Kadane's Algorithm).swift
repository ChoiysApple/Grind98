class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var maxSum = nums[0]
        var currentSum = nums[0]

        for num in nums[1...] {
            currentSum = max(currentSum + num, num)
            maxSum = max(maxSum, currentSum)
        }

        return maxSum
    }
}