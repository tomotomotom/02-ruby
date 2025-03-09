def left2(str)
  first_two = str[0, 2]
  result = str[2..-1] + first_two
  puts result
end

# 呼び出し例
left2("Hello")  # → "lloHe"
left2("java")   # → "vaja"
left2("Hi")     # → "Hi"
