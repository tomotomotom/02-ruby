def get_days(year, month)
  # 各月の日数（2月は仮の28日）
  days_in_month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

  # 閏年の判定
  if month == 2 # 2月の場合のみ判定
    if (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)
      return 29
    end
  end

  days_in_month[month - 1]
end

puts "年を入力してください："
year = gets.to_i
puts "月を入力してください："
month = gets.to_i

days = get_days(year, month)
puts "#{year}年#{month}月は#{days}日間あります"
