input = gets.to_i
if input <= 10
  if input <= 0
    puts "0以下の数字です"
  else
    puts "10以下の数字です"
  end
else
  puts "10より大きい数字です"
end