require 'test/unit'
require_relative 'word_length'

class TestWordLength < Test::Unit::TestCase
	def test_empty_list
		assert_equal([], length_finder([]))
	end

	def test_sting_with_length_4
		assert_equal([4], length_finder(["java"]))
	end

	def test_list_with_two_elements
		assert_equal([6,4], length_finder(["oracle", "java"]))
	end
end
