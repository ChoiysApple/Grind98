class Solution {

    func maxProfit(_ prices: [Int]) -> Int {
        
        var minPrice = Int.max
        var bestProfit = 0

        for price in prices {
            if price < minPrice {
                minPrice = price
                continue
            } 
            
            let profit = price - minPrice
            if profit > bestProfit {
                bestProfit = profit
            }
        }

        return bestProfit
    }
}