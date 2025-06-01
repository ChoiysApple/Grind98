class Solution {
    func isValid(_ s: String) -> Bool {

        let pair: [Character: Character] = [
            ")": "(",
            "}": "{",
            "]": "["
        ]

        var stack: [Character] = []

        for c in s {
            
            switch c {
                case ")", "}", "]":
                    if stack.last == pair[c] {
                        stack.removeLast()
                    } else {
                        return false
                    }
                default:
                    stack.append(c)
            }
        }

        return stack.count == 0
    }
}