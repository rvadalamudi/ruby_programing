class BookInStock

	attr_accessor :isbn, :price
	def initialize(isbn, price)
		@isbn = isbn
		@price = Float(price)
	end
end

book1 = BookInStock.new("isbn1",13)
book2 = BookInStock.new("isbn2",50)
puts "#{book1.isbn}"
puts "#{book1.price}"
puts "#{book2.isbn}"
puts "#{book2.price}"
book1.price = book1.price * 0.75
book2.price = book2.price * 0.50
puts "#{book1.price}"
puts "#{book2.price}"