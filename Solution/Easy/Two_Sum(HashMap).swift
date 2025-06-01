class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        // Hash 사용해서 체크된 number 저장
        // iteration 하면서 Hash에 저장된 보완값이 있다면, 그게 정답

        var subDict: [Int: Int] = [:]   // subDict[target - number] = index

        for (index, number) in nums.enumerated() {

            let sub = target - number
            if let resultIndex = subDict[sub] {
                return [resultIndex, index]
            }

            subDict[number] = index
        }

        print(subDict)

        return []
    }
}
