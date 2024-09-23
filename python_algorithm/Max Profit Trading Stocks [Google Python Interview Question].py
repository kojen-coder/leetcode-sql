def max_subarray_sum(prices):
  min_price = prices[0]
  max_profit = 0
  for price in prices:
    max_profit = max(max_profit, price - min_price)
    min_price = min(min_price, price)
  return max_profit