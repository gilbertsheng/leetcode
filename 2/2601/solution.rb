# @param {Integer[]} nums
# @return {Boolean}
def prime_sub_operation(nums)
  n = nums.size
  return true if n == 1

  filter_primes = lambda do |a|
    return [] if a.empty?

    p = a.first
    r = a.drop(1).reject { |x| x.modulo(p).zero? }
    [p] + filter_primes[r]
  end

  primes = filter_primes[2.upto(nums.max).to_a]

  -2.downto(-n) do |i|
    a, b = nums[i], nums[i+1]
    next if b > a

    k = primes.bsearch_index { |p| p > a - b }
    return false if k.nil? || (primes[k] >= a)

    nums[i] -= primes[k]
  end

  true
end
