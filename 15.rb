def output(n)
  n.times do
    puts "Hello!"
  end
end

puts "何回表示させますか？"
n = gets.to_i
output(n)