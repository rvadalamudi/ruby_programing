require 'test/unit'
require_relative 'cpoly'

class TestCpoly < Test::Unit::TestCase
	def test_no_input
		assert_equal(0,Cpoly.area(0,0))
	end
end
