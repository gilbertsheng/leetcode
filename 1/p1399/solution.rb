# @param {Integer} n
# @return {Integer}
def count_largest_group(n)
  h = (1..n).to_a.group_by do |x|
    sum = 0

    until x.zero?
      r, q = x.divmod(10)
      sum += q
      x = r
    end

    sum
  end

  size, count = h.values.map(&:size).tally.max
  count
end
