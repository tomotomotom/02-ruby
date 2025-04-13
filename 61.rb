def register_data(cars)
  puts "データの登録"
  puts "車の車種を入力してください"
  type = gets.chomp
  puts "1Lあたりの走行可能距離(km/l)を入力してください"
  fuel = gets.to_i
  puts "乗車人数を入力してください"
  number = gets.to_i
  car = { type: type, fuel: fuel, number: number }
  cars << car
  puts "データが登録されました！"
end

def show_detail(car)
  puts "車種：#{car[:type]}"
  puts "燃費（km/l）：#{car[:fuel]}"
  puts "乗車人数：#{car[:number]}"
end

def show_data(cars)
  puts "データの確認"
  cars.each_with_index do |car, index|
    puts "#{index + 1}: #{car[:type]}"
  end
  puts "確認したい車の番号を入力してください"
  input = gets.to_i
  if input.between?(1, cars.size)
    show_detail(cars[input - 1])
  else
    puts "無効な番号です"
  end
end

cars = []

while true
  puts "選択してください"
  puts "[0]データの登録"
  puts "[1]データの確認"
  puts "[2]プログラムの終了"
  input = gets.to_i

  if input == 0
    register_data(cars)
  elsif input == 1
   show_data(cars)
  elsif input == 2
    exit
  else
    puts "無効な値です"
  end
end