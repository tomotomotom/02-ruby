# Person クラスの定義
class Person
  attr_reader :name, :age  # name と age を外部から参照できるようにする

  def initialize(name, age)
    @name = name
    @age = age
  end
end

# Student クラスの定義（Person を継承）
class Student < Person
  def introduce
    puts "私の名前は#{name}です。#{age}歳です。"
  end
end

# Student クラスのインスタンスを作成し、introduce メソッドを実行
student = Student.new("太郎", 20)
student.introduce
