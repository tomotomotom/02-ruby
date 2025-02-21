class Fruit
  attr_reader :name, :price

  def self.class_method
    puts "採れたて新鮮な果実です"
  end

  def initialize(name, price)
    @name = name
    @price = price
  end

  def instance_method
    puts "#{@name}は#{@price}円です"
  end
end

# 3つのインスタンスを生成
apple = Fruit.new("りんご", 200)
banana = Fruit.new("バナナ", 100)
orange = Fruit.new("オレンジ", 150)

# クラスメソッドを呼び出し
Fruit.class_method

# インスタンス毎にインスタンスメソッドを呼び出し
apple.instance_method
banana.instance_method
orange.instance_method