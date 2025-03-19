def register_data
  puts "データの登録"
end

def show_data
  puts "データの確認"
end

while true
  puts "選択してください"
  puts "[0] : 登録する"
  puts "[1] : データを確認する"
  puts "[2] : 終了する"
  input = gets.to_i

  if input == 0
    register_data  # データの登録を呼び出し
  elsif input == 1
    show_data  # データの確認を呼び出し
  elsif input == 2
    puts "アプリケーションを終了します。"
    break  # ループを抜けて終了
  else
    puts "無効な値です。再度選択してください。"
  end
end
