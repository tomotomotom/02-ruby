def array_count9(nums)
  count = nums.count(9)  # 配列内の9の個数を数える
  puts puts ("配列の中には9が#{count}個です")
end

# 呼び出し例
array_count9([1, 2, 9])          # → 1
array_count9([1, 9, 9, 3, 9])    # → 3
array_count9([1, 2, 3, 4, 5])    # → 0
array_count9([9, 9, 9, 9, 9, 9]) # → 6