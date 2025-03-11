def lone_sum(ary)
  # 各要素の出現回数をカウント
  counts = ary.tally
  
  # 出現回数が1のものだけを合計
  sum = counts.select { |key, value| value == 1 }.keys.sum
  
  puts sum
end

# 呼び出し例
lone_sum([1, 2, 3])  # → 6
lone_sum([3, 2, 3])  # → 2
lone_sum([3, 3, 3])  # → 0
lone_sum([5, 5, 10]) # → 10


def lone_sum(ary)
  # 配列から、重複しない要素のみ取り出す
  uniq_nums = []
  ary.each do |num|
    count = 0
    ary.each do |i|
      if num == i
        count += 1
      end
    end
    if count < 2
      uniq_nums << num
    end
  end

  # uniq_nums配列内の合計
  sum = 0
  uniq_nums.each do |unique_num|
    sum += unique_num
  end
  puts sum
end

# 呼び出し例
lone_sum([1, 2, 3])