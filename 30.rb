def fizzbuzz(max_num)
  (1..max_num).each do |num|
    if num % 15 == 0
      print "FizzBuzz"
    elsif num % 3 == 0
      print "Fizz"
    elsif num % 5 == 0
      print "Buzz"
    else
      print num
    end
    print ", " unless num == max_num  
   end
  puts
end

puts 'いくつまで数えますか？'
num = gets.to_i
fizzbuzz(num)
