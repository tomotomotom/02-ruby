def count_hi(str)
  str.scan("hi").length
end

# 呼び出し例（引数には対象となる文字列を指定します）
 puts count_hi('abc hi ho')