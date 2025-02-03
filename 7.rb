
today = Time.now.wday

wdays = ["日曜日", "月曜日", "火曜日", "水曜日", "木曜日", "金曜日", "土曜日"]

if today == 5
  puts "今日は#{days[today]}だ！！！"
else
  puts "今日は #{wdays[today]} です。"
end