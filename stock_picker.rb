# stock_picker takes an array of daily stock prices and returns a pair of days
# that are best to buy and sell
def stock_picker(prices)
  # Find optimal sell price if buying on first day
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