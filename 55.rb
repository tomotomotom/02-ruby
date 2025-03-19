def register_data(users)
  puts "データの登録"
  puts "名前を入力してください"
  name = gets.chomp
  puts "年齢を入力してください"
  age = gets.to_i
  puts "身長（m単位）を入力してください"
  height = gets.to_i
  puts "体重を入力してください"
  weight = gets.to_i
  user = { name: name, age: age, height: height, weight: weight }
  users << user
  puts "データが登録されました！"
end

def show_data(users)
  puts "データの確認"
  index = 1
  users.each do |user|
    puts "#{index}: #{user[:name]}"
    index += 1
  end
  input = gets.to_i
  show_detail(users[input - 1])
end

def show_detail(user)
  puts "名前: #{user[:name]}"
  puts "年齢: #{user[:age]}"
  puts "身長: #{user[:height]}"
  puts "体重: #{user[:weight]}"
end

users = [] 

while true
  puts "選択してください"
  puts "[0]登録する"
  puts "[1]データを確認する"
  puts "[2]終了する"
  input = gets.to_i

  if input == 0
    register_data(users)
  elsif input == 1
   show_data(users)
  elsif input == 2
    exit
  else
    puts "無効な値です"
  end
end