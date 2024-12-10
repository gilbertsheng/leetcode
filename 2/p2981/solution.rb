require "set"

# @param {String} s
# @return {Integer}
def maximum_length(s)
  h = Hash.new(0)
  n = s.size

  0.upto(n - 1) do |i|
    i.upto(n - 1) do |j|
      s1 = s[i..j]
      h[s1] += 1 if s1.chars.to_set.size == 1
    end
  end

  h = h.select { |k, v| v >= 3 }
  return -1 if h.empty?

  h.keys.map(&:size).sort.last
end
