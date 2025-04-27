def text_transform(text)
  # 空白（半角スペース or 全角スペース）をすべて削除
  text = text.gsub(/ |　/, "")

  # 大文字に変換
  text = text.upcase

  # 出力
  puts text
end

# 呼び出し例
text_transform("hello world")
text_transform("ruby on rails")
text_transform("a　bc")
