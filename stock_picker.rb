def stock_picker(prices)
    min_position = prices[0]
    min_index = 0
    profit = 0
    days = [0,0]

    prices.each_with_index do |currentProfit, currentIndex|
        if currentProfit < min_position
            min_position = currentProfit
            min_index = currentIndex
            next
        end
        if currentProfit - min_position > profit
            profit = currentProfit - min_position
            days = [min_index, currentIndex]
        end
    end
    days
end

array = [17,3,6,9,15,8,6,1,10]

p stock_picker(array)