def stock_picker(prices)
  best_buy = 0
  best_sell = 1
  best_profit = prices[1] - prices[0]
  
  lowest_so_far = 0

  (1...prices.length).each do |day|
    profit_if_sold_today = prices[day] - prices[lowest_so_far]

    if profit_if_sold_today > best_profit
      best_profit = profit_if_sold_today
      best_buy = lowest_so_far
      best_sell = day
    end

    if prices[day] < prices[lowest_so_far]
      lowest_so_far = day
    end
  end

  [best_buy, best_sell]
end

p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])