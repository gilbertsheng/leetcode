# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(2, maximum_length("aaaa"))
    assert_equal(-1, maximum_length("abcdef"))
    assert_equal(1,  maximum_length("abcaba"))
  end
end
