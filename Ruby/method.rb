class Cploy
    attr_accessor :l, :m
	def initialize(l=1,m=1)
		@l = l
		@m = m
	end

	def area
		@l * @m
	end

	def +(z)
      result = dup
      result.l += z.l
      return result 
    end
	
end

a = Cploy.new(3,8)
b = Cploy.new(2,2)
#puts "#{self.object_id}  <-> #{a.object_id}"
z = a.area
x = b.area
puts "#{z} <-> #{x}"
h = Cploy.new
h = a + b
puts "#{h.m}"