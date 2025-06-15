class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var front = 0
        var rear = nums.count - 1

        var mid = 0

        while front <= rear {

            mid = (front + rear)/2

            // found target
            if nums[mid] == target {
                return mid
            }

            // Select front half
            if nums[mid] > target {
                rear = mid - 1

            // Select rear half
            } else {
                front = mid + 1
            }
        }

        return -1
    }
}