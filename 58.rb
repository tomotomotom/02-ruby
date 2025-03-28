# 登録された人たちの配列
players = []

def register_data(players)
  puts '名前を入力してください'
  name = gets.chomp

  punch = get_power_input("パンチ力")
  kick = get_power_input("キック力")
  jump = get_power_input("ジャンプ力")

  player = { name: name, punch: punch, kick: kick, jump: jump }
  players << player
  puts "登録が完了しました！"
end

def get_power_input(label)
  loop do
    puts "#{label}を入力してください(1 ~ 100)"
    value = gets.to_i
    if value >= 1 && value <= 100
      return value
    else
      puts "1〜100の数字を入力してください"
    end
  end
end

def show_data_list(players)
  if players.empty?
    puts "まだ誰も登録されていません。"
    return
  end

  puts '見たい人の番号を選択してください'
  players.each_with_index do |player, index|
    puts "#{index + 1}: #{player[:name]}"
  end

  input = gets.to_i

  if input < 1 || input > players.length
    puts "無効な番号です"
    return
  end

  selected = players[input - 1]
  puts "名前：#{selected[:name]}"
  puts "パンチ力：#{selected[:punch]}"
  puts "キック力：#{selected[:kick]}"
  puts "ジャンプ力：#{selected[:jump]}"
end

# メインメニュー
while true
  puts '選択してください'
  puts '[0] 登録する'
  puts '[1] データを確認する'
  puts '[2] 終了する'
  input = gets.to_i

  case input
  when 0
    register_data(players)
  when 1
    show_data_list(players)
  when 2
    puts "アプリケーションを終了します。"
    exit
  else
    puts '無効な値です'
  end
end
