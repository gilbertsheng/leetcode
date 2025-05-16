# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(4, count_largest_group(13))
    assert_equal(2, count_largest_group(2))
  end
end
