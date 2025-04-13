class Dog
  # ここにクラスの定義を書き加えてください
  def initialize(name, dog_type)
    @name = name  # インスタンス変数@nameを定義
    @dog_type = dog_type  # インスタンス変数@dog_typeを定義
  end

  def say
    puts "ワンワン"
  end

  def say_type
    puts "私は#{@dog_type}です"
  end

  def self_introduction
    puts "私の名前は#{@name}で種類は#{@dog_type}です"
  end
end

# クラスの外でメソッドを呼び出してください
dog = Dog.new("マロン", "トイプードル")
dog.say
dog.say_type
dog.self_introduction
