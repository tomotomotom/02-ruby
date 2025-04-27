def check_index(text, search_string)
  index = text.index(search_string)  # 指定した文字の最初の位置を取得（なければnil）

  if index
    puts "特定の文字#{search_string}の位置は、#{index}番目です"
  else
    puts "特定の文字#{search_string}はありません"
  end
end

# 呼び出し例
check_index("hello","e")
check_index("hello","h") #→ 特定の文字hの位置は、0番目です
check_index("world","e") #→ 特定の文字eはありません
check_index("apple","p") #→ 特定の文字pの位置は、1番目です