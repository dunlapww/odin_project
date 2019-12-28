def pick_stock(stocks)
  max_margin = 0
  buy_day = 0
  sell_day = 0

  stocks.each do |stock_price|
    for day in stocks.index(stock_price)..stocks.size - 1 do
      margin = stocks[day] - stock_price
      if margin > max_margin
        max_margin = margin
        buy_day = stocks.index(stock_price)
        sell_day = day
      end
    end
  end
  puts "buy on day #{buy_day} and sell on day #{sell_day}, margin is #{max_margin}."
end




stocks = [17,3,5,9,15,8,6,1,10]
pick_stock(stocks)
