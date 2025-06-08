class Solution {
    func isPalindrome(_ s: String) -> Bool {

        // 1. Remove non-alphanumeric & lowercased
        let str = s.lowercased()

        // 2. empty or single character is always palindrome
        guard str.count > 1 else {
            return true
        }        

        // 3. Two - pointer
        var front = str.startIndex
        var rear = str.index(before: str.endIndex)

        while front < rear {

            // 3.1. filter non-alphanumeric
            guard str[front].isLetter || str[front].isNumber else {
                front = str.index(after: front)
                continue
            }

            guard str[rear].isLetter || str[rear].isNumber else {
                rear = str.index(before: rear)
                continue
            }

            // 3.2. check left and right is identical
            if str[front] != str[rear] {
                return false
            }

            // 3.3 move pointers
            front = str.index(after: front)
            rear = str.index(before: rear)
        }

        return true
    }
}