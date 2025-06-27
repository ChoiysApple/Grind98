class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var maxSum = nums[0]

        var currentSum = 0
        for startIndex in (0..<nums.count) {
            currentSum = 0
            for endIndex in (startIndex..<nums.count) {
                currentSum += nums[endIndex]
                maxSum = max(maxSum, currentSum)
            }
        }

        return maxSum
    }
}