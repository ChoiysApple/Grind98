class Solution {
    func insert(_ intervals: [[Int]], _ newInterval: [Int]) -> [[Int]] {
        var result: [[Int]] = []
        var merged: [Int] = newInterval
        var inserted: Bool = false

        for interval in intervals {
            // 1. Not Overlapped
            if interval[1] < merged[0] {
                result.append(interval)
                continue
            } 

            // 2. After Overlapped
            if interval[0] > merged[1] {
                if !inserted {
                    result.append(merged)
                    inserted = true
                }
                result.append(interval)
                continue
            } 
            
            // 3. Overlapped
            merged[0] = min(merged[0], interval[0])
            merged[1] = max(merged[1], interval[1])
        }

        if !inserted {
            result.append(merged)
        }

        return result
    }
}