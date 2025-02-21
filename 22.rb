def count_evens (num)
  puts num.count { |n| n.even? }
end


count_evens([2, 1, 2, 3, 4])
count_evens([2, 2, 0])
count_evens([1, 3, 5])