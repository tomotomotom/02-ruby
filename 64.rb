now = Time.new
weekdays = ["日", "月", "火", "水", "木", "金", "土"]

puts "現在は西暦#{now.strftime("%Y年%-m月%-d日")}"
puts "#{weekdays[now.wday]}曜日です"