def register_data
  # 「登録する」を選択した場合の処理
  puts '名前を入力してください'
  puts 'パンチ力を入力してください(0 ~ 100)'
  puts 'キック力を入力してください(0 ~ 100)'
  puts 'ジャンプ力を入力してください(0 ~ 100)'
 end
 
 def show_data_list
  # 「データを確認する」を選択した場合の処理
  puts "見たい人の番号を選択してください"
 end
 
 while true
  puts "選択してください"
  puts "[0]登録する"
  puts "[1]データを確認する"
  puts "[2]終了する"
  input = gets.to_i

  if input == 0
    register_data
  elsif input == 1
    show_data_list
  elsif input == 2
    exit
  else
    puts "無効な値です"
  end
 end