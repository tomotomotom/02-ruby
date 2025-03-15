input = nil  

while input != 1
  
  puts "[0]:カロリーを表示する、[1]:終了する"
  input = gets.to_i 

  if input == 0
    puts "500kcal"
  elsif input == 1
    puts "アプリケーションを終了します。"
  else
    puts "無効な入力です。0 または 1 を入力してください。"
  end
end
