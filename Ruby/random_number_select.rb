def random_select(array, n)
	result = []
	len = array.length
    n.times do 
    	result << array[rand(len)]
    end
    return result
end

arr = [0.1,0.002,-0.34,0.98,1.34,0.003]
puts "enter the number of elements you need : "
n = Integer(gets.chomp)
op = random_select(arr,n)
puts "#{op}"