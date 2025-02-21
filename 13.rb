fruits_price = [["apple", [200, 250, 220]], ["orange", [100, 120, 80]], ["melon", [1200, 1500]]]

total_prices = {}

fruits_price.each do |fruit, prices|
  total_prices[fruit] = prices.sum
end

total_prices.each do |fruit, total|
  puts "#{fruit}の合計金額は #{total}円です"
end
