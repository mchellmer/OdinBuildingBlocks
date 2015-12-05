# stock_picker takes an array of daily stock prices and returns a pair of days
# that are best to buy and sell
# returns [day to buy, day to sell] where days begin with 0
def stock_picker(prices)
  # Initialize days to buy and sell, as well as 0 profit
  dayB = 0
  dayS = 0
  prof = 0

  # Use loop to test each possible buy and sell pair, update when more optimal
  0.upto(prices.length - 1) do |i|
    i.upto(prices.length - 1) do |j|
      prof0 = prices[j] - prices[i]
      if prof0 > prof
        prof = prof0
        dayB = i
        dayS = j
      end
    end
  end
  return [dayB,dayS]
end