
// 1. 배열 정렬
// 2. 첫 인자를 사용해서 더하기 시작, target 보다 커지면 break 하는 방식
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {

        for a in 0..<nums.count {
            for b in 0..<nums.count where a != b {
                
                let sum = nums[a] + nums[b]
                if sum == target {
                    return [a, b]
                }

                if sum > target {
                    break
                }
            }
        }

        return []
    }
}

