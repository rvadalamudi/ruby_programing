class Array
	def initialize(len=0,value=nil)
		i = 0
		while i < len
			self[i] = value
			i += 1
		end
	end
=begin   
    def each
    	i = 0
    	while i <= self.size
    	  yield self[i]
    	  i += 1 
        end
    end
=end    

    def del_at(index)
    	if index > self.size 
    		return nil
    	else
        self[index,1] = []
    	return self
        end
    end

     def del(value)
     	if self.include? value
     		self.each do |x|
     			if x == value
     				i = self.index(value)
     				self[i,1] = []
     			else
     				nil
     			end
     		end
     		return self
     	else
     		return self
     	end
     end

     def sel
     	temp = Array.new
     	self.each do |x| 
     		if yield x
     			temp << x
     		else
     			nil
     		end
     	end
     	temp
     end
end

c = Array.[](0,1,2,3,4,5,6)
#puts "#{c}"
c.del(4)
puts "#{c}"
j = c.sel {|x| x > 3}
puts "#{j}"