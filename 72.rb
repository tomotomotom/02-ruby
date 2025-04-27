def register_item(registered_item)
  item = {}
  puts "商品名を入力してください："
  item[:name] = gets.chomp
  puts "販売価格を入力してください："
  item[:selling_price] = gets.to_i
  puts "仕入れ値を入力してください："
  item[:cost_price] = gets.to_i
  line = "---------------------------"

  puts "商品名 : #{item[:name]}\n#{line}"
  puts "販売価格 : #{item[:selling_price]}円\n#{line}"
  puts "仕入れ値 : #{item[:cost_price]}円\n#{line}"

  registered_item << item

  return registered_item
end

def calculate_profit(item)
  # 利益と利益率を計算してitemに保存する
  profit = item[:selling_price] - item[:cost_price]
  profit_rate = (profit.to_f / item[:cost_price]) * 100

  item[:profit] = profit
  item[:profit_rate] = profit_rate.round(1)  # 小数点1桁に丸め
end

def check_items(registered_item)
  line = "---------------------------"
  puts "【商品一覧】\n#{line}"

  total_sales = 0
  total_profit = 0
  total_profit_rate = 0

  registered_item.each do |item|
    calculate_profit(item)

    puts "商品名：#{item[:name]}"
    puts "販売価格：#{item[:selling_price]}円"
    puts "仕入れ値：#{item[:cost_price]}円"
    puts "利益：#{item[:profit]}円"
    puts "利益率：#{item[:profit_rate]}%\n#{line}"

    total_sales += item[:selling_price]
    total_profit += item[:profit]
    total_profit_rate += item[:profit_rate]
  end

  average_profit_rate = (total_profit_rate / registered_item.size).round(1)

  puts "【合計】\n#{line}"
  puts "総売上 : #{total_sales}円"
  puts "総利益 : #{total_profit}円"
  puts "平均利益率 : #{average_profit_rate}%\n#{line}"
end

def end_program
  puts "アプリケーションを終了します。"
  exit
end

def exception
  puts "入力された値は無効な値です"
end

item_list = []

while true do
  puts "商品数: #{item_list.length}"
  puts "[1]商品を登録する"
  unless item_list.empty?
    puts "[2]商品の利益一覧を確認する"
  end
  puts "[3]アプリを終了する"

  input = gets.to_i

  if input == 1 then
    item_list = register_item(item_list)
  elsif input == 2 then
    check_items(item_list)
  elsif input == 3 then
    end_program
  else
    exception
  end
end
