class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {

        // anagram should have same lenght
        guard s.count == t.count else {
            return false
        }

        var hash: [Character: Int] = [:]

        for (charS, charT) in zip(s, t) {
            hash[charS, default: 0] += 1
            hash[charT, default: 0] -= 1
        }

        for count in hash.values where count != 0 {
            return false
        }

        return true
    }
}