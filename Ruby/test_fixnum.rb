require 'test/unit'
require_relative 'fixnum'

class TestFixnum < Test::Unit::TestCase
	def test_no_input
		assert_equal(true, array_of_fixnum([]))
	end

	def test_all_fixnum
		assert_equal(true, array_of_fixnum([1,2,3,10,250]))
	end

	def test_one_element_is_char
		assert_equal(false, array_of_fixnum([1,2,3,4,'a']))
	end

	def test_negative_elements
		assert_equal(true, array_of_fixnum([1,2,-3,4,3,2]))
	end

	def test_decimal_values
		assert_equal(false, array_of_fixnum([2,3,4.5,1.23,0.05]))
	end
end
