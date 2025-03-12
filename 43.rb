class Book
  attr_reader :title,:price

  def initialize(title,price)
    @title = title
    @price = price
  end
end

book = Book.new("本",100)
puts book.title
puts book.price