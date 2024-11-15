# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(3, find_length_of_shortest_subarray([1,2,3,10,4,2,3,5]))
    assert_equal(4, find_length_of_shortest_subarray([5,4,3,2,1]))
    assert_equal(0, find_length_of_shortest_subarray([1,2,3]))
  end
end
