def janken
  puts "[0]:グー\n[1]:チョキ\n[2]:パー"

  # ターミナルからじゃんけんの手を入力
  player_hand = gets.to_i
  # player_handが0,1,2以外の値のとき、再度入力を促す  
  while player_hand < 0 || player_hand > 2 do
    puts "0,1,2のいずれかを入力してください"
    player_hand = gets.to_i
  end

  # 乱数でプログラム側の手を決定
  program_hand = rand(0..2)
  # player_handとprogram_handの値を表示

  jankens = ["グー", "チョキ", "パー"]

  puts "あなたの手:#{jankens[player_hand]}, わたしの手:#{jankens[program_hand]}"

  # あいこの判定はplayer_handとprogram_handの値が等しいとき
  if (player_hand == program_hand)
    # あいこの場合の処理
    puts "あいこで"
    puts "[0]:グー\n[1]:チョキ\n[2]:パー"
    # ターミナルからじゃんけんの手を入力
    player_hand = gets.to_i
    # 返り値を返す
    return true
 # じゃんけんに勝つパターンを全て並べる
  elsif (player_hand == 0 && program_hand == 1) ||
        (player_hand == 1 && program_hand == 2) ||
        (player_hand == 2 && program_hand == 0)
    puts "あなたの勝ちです"
   # 返り値を返す
    return
  else  # じゃんけんに負けるパターンを全て並べる
    (player_hand == 2 && program_hand == 0) || 
    (player_hand == 1 && program_hand == 0) ||
    (player_hand == 2 && program_hand == 1) 
    puts "あなたの負けです"
    # 返り値を返す
    return false
  end
end

next_game = true

puts "最初はグー、じゃんけん..."
janken
while next_game do
# jankenメソッドの返り値をnext_gameに代入
end