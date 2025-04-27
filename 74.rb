def bubble_sort_desc(data)
  length = data.length

  for i in 0...length do
    for j in 0...(length - i - 1) do
      # ここだけ変更！左側が右側より小さい場合に交換
      if data[j] < data[j + 1]
        data[j], data[j + 1] = data[j + 1], data[j]
      end
    end
  end
end

# 呼び出し例
number = [1, 23, 4, 6, 12, 45, 79]
bubble_sort_desc(number)
puts number