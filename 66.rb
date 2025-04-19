def registration_student(students)
  # 生徒の名前と年齢を登録できるようにしなさい
  student = {}
  puts '生徒名を入力してください'
  name = gets.chomp
  puts '生徒の年齢を入力してください'
  age = gets.to_i

  # 登録した生徒の国語、数学、英語の点数を登録できるようにしなさい
  # 科目を配列で定義
  subjects = ["国語", "数学", "英語"]
  scores = {}

  subjects.each do |subject|
    puts "#{subject}の得点は？"
    key = case subject
          when "国語" then :language_score
          when "数学" then :math_score
          when "英語" then :english_score
          end
    scores[key] = gets.to_i
  end

  student = {
    name: name,
    age: age
  }.merge(scores)  # ハッシュをマージして1つにまとめる
  # 登録した生徒の名前、年齢、国語、数学、英語の点数を表示できるようにしなさい
  students << student
  puts "登録したが完了しました"
end

def show_student_name(students)
  # 登録された生徒の名前を番号を振って表示しなさい
  puts '見たい生徒の番号を入力してください'
  students.each_with_index do |student, index|
    puts "#{index + 1}: #{student[:name]}"
  end
  input = gets.to_i - 1
  if input < 0 || input >= students.length
    puts '無効な値です'
    return
  end
  selected_student = students[input]

  # 選択された生徒の名前、年齢、国語、数学、英語の点数を表示できるようにしなさい
  puts "名前:#{selected_student[:name]}"
  puts "年齢:#{selected_student[:age]}"
  puts "国語:#{selected_student[:language_score]}"
  puts "数学:#{selected_student[:math_score]}"
  puts "英語:#{selected_student[:english_score]}"
end

students = []

while true
  puts '行いたい項目を選択してください'
  puts '[1]点数を登録する'
  puts '[2]点数を確認する'
  puts '[3]終了する'
  input = gets.to_i
  if input == 1
    registration_student(students)
  elsif input == 2
    show_student_name(students)
  elsif input == 3
    puts 'アプリケーションを終了します'
    # アプリケーションを終了させなさい  
    break
  else
    puts '無効な値です'
  end
end