class Solution {

    typealias Stock = (price: Int, day: Int)

    func maxProfit(_ prices: [Int]) -> Int {
        
        let stock = prices.enumerated()
        .map { Stock(price: $1, day: $0) }
        .sorted { $0.price < $1.price }

        var result = 0
        for buy in 0..<stock.count {
            for sell in (0..<stock.count).reversed() where buy < sell {
                let buyInfo = stock[buy]
                let sellInfo = stock[sell]

                guard buyInfo.day < sellInfo.day else { continue }

                let profit = sellInfo.price - buyInfo.price
                if profit > result {
                    result = profit
                    break
                }
            }
        }

        return result
    }
}