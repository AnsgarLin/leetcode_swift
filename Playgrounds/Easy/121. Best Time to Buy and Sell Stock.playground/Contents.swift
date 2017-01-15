/*:
 121 Best Time to Buy and Sell Stock

 Say you have an array for which the ith element is the price of a given stock on day i.

 If you were only permitted to complete at most one transaction (ie, buy one and sell one share of the stock), design an algorithm to find the maximum profit.

 ![sample](121.png)
 */
import UIKit

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        if prices.count == 0 { return 0 }
        var maxPro = 0
        var curMin = prices[0]

        for i in 0..<prices.count {
            if prices[i] > curMin {
                let tmpPro = prices[i] - curMin
                maxPro = max(maxPro, tmpPro)
            } else {
                curMin = prices[i]
            }
        }

        return maxPro
    }
}