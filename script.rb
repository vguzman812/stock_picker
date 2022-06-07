def stock_picker(prices)
    best_profit = 0
    best_buy_sell_days = ""
    
    prices.each_with_index do |price1, index1|
        prices.each_with_index do |price2, index2|

            profit = price2 - price1

        if profit > best_profit && index1 < index2
            best_profit = profit
            best_buy_sell_days = [(index1), (index2)]
        end
    end
    end

    p "The best profit you can make is #{best_profit} when you buy on day #{best_buy_sell_days
    best_buy_sell_days[0] + 1} at the price of $#{prices[best_buy_sell_days[0]]}, and sell on day #{best_buy_sell_days[1] + 1} at the price of $#{prices[best_buy_sell_days[1]]}"
    end

    stock_picker([17,3,6,9,15,8,6,1,10])