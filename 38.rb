def binary_search(array, target)
  left = 0
  right = array.length - 1

  while left <= right
    mid = (left + right) / 2

    if array[mid] == target
      puts "値は配列の#{mid}番目に存在します。"
      return
    elsif array[mid] < target
      left = mid + 1
    else
      right = mid - 1
    end
  end

  puts "値は配列内に存在しません。"
end

# 検索対象の配列
array = [1, 3, 5, 6, 9, 10, 13, 20, 26, 31]

# ユーザー入力
puts "検索する値を入力してください:"
target = gets.to_i

# バイナリサーチの実行
binary_search(array, target)
