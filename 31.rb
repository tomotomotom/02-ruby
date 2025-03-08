def end_other(a, b)

  a_down = a.downcase
  b_down = b.downcase

  if a_down.end_with?(b_down) || b_down.end_with?(a_down)
    puts "True"
  else
    puts "False"
  end
end

# 呼び出し例
end_other('Hiabc', 'abc')  # → True
end_other('AbC', 'HiaBc')  # → True
end_other('abc', 'HaIoBc') # → False
