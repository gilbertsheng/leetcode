# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert(prime_sub_operation([4, 9, 6, 10]))
    assert(prime_sub_operation([6, 8, 11, 12]))
    refute(prime_sub_operation([5, 8, 3]))
    refute(prime_sub_operation([2, 2]))
    assert(prime_sub_operation([998,2]))
  end
end
