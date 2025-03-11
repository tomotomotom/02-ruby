def near_ten(num)
  remainder = num % 10
  
  if remainder <= 2 || remainder >= 8
    puts "True"
  else
    puts "False"
  end
end

# 呼び出し例
near_ten(12)  # → True
near_ten(17)  # → False
near_ten(19)  # → True
near_ten(30)  # → True
near_ten(22)  # → True
near_ten(25)  # → False
