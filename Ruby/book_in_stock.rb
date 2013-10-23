class BookInStock

	attr_accessor :isbn, :price
	def initialize(isbn, price)
		@isbn = isbn
		@price = Float(price)
	end

	def price_in_cents()
		Integer(price * 100 + 0.5)
	end

	def price_ins=(price)
		@price = price/100.00
	end
end

book = BookInStock.new("isbn1", 34.54)
puts "#{book.price}"
puts "#{book.isbn}"
puts "#{book.price_in_cents}"
book.price_ins = 1234
puts "#{book.price}"
