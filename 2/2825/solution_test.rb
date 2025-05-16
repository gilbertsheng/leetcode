# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert(can_make_subsequence("abc", "ad"))
    assert(can_make_subsequence("zc", "ad"))
    refute(can_make_subsequence("ab", "d"))
  end
end
