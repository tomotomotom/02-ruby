def fortune_telling(birthday)
  results = ["凶", "中吉", "吉", "大吉"]  # 占い結果リスト
  shuffled_results = results.shuffle       # シャッフルする

  random_number = rand(10)  # 0〜9の乱数を生成
  remainder = (birthday * random_number) % 4  # 4で割った余りを求める

  fortune = shuffled_results[remainder]  # 余りに対応する占い結果を取得
  puts "あなたの占い結果は「#{fortune}」です！"
end

# ユーザー入力
puts "誕生日を数字で入力してください（例：4月3日→403、11月15日→1115）:"
birthday = gets.to_i

fortune_telling(birthday)
