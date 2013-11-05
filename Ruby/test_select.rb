require 'test/unit'
require_relative 'select'

class TestSelect < Test::Unit::TestCase
	def test_return_empty_list
		assert_equal([], Array.select[] )
	end
end