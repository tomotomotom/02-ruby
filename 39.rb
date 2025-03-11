def near_ten(num)
  # 各桁の数字を取得し、和を計算
  sum = num.digits.sum  # `digits` で [1, 1, 7] → `.sum` で合計

  # 10の倍数との差（小さい方を選択）
  remainder = sum % 10
  difference = [remainder, 10 - remainder].min  # 10の倍数との差を小さい方にする

  if difference <= 2
    puts "True"
  else
    puts "10の倍数との差は#{difference}です"
  end
end

# ユーザーに入力を促す
puts "3桁の整数を入力してください。"
num = gets.to_i

# 入力された値が3桁の整数であることをチェック
if num >= 100 && num <= 999
  near_ten(num)
else
  puts "入力が正しくありません。3桁の整数を入力してください。"
end

# 呼び出し例
near_ten(117) # → True  (1+1+7=9, 10の倍数との差1)
near_ten(123) # → 10の倍数との差は4です (1+2+3=6, 10の倍数との差4)
near_ten(111) # → 10の倍数との差は3です (1+1+1=3, 10の倍数との差3)
near_ten(190) # → True  (1+9+0=10, 10の倍数との差0)
near_ten(159) # → True  (1+5+9=15, 10の倍数との差0)
