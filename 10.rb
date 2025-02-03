def search(target_num, input)
  # 処理を記述
  input.each_with_index do |num,i|
    if num == target_num
    puts "#{i + 1}番目にあります"
    return
    end
  end
end

input = [3, 5, 9 ,12, 15, 21, 29, 35, 42, 51, 62, 78, 81, 87, 92, 93]
# 呼び出し例
search(15, input)