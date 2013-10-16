def array_of_fixnum(array)
	array.all? { |x| x.is_a? Fixnum}
end

a = ['a',2,3,3,4]
#a << Integer(gets.chomp)
op = array_of_fixnum(a)
puts "#{op}"