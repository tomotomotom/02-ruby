def calculate_points(amount, is_birthday)
  if amount <= 999
    points = amount * 0.03  # 3%のポイント
  else
    points = amount * 0.05  # 5%のポイント
  end

  points *= 5 if is_birthday  # 誕生日ならポイント5倍

  puts "ポイントは#{points.floor}点です"  # 小数点以下を切り捨てて出力
end

# 呼び出し例
calculate_points(500, false)  # → ポイントは15点です
calculate_points(2000, false) # → ポイントは100点です
calculate_points(3000, true)  # → ポイントは750点です
