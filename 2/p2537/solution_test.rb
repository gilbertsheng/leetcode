# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(1, count_good([1,1,1,1,1], 10))
    assert_equal(4, count_good([3,1,4,3,2,2,4], 2))
  end
end
