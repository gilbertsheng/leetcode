require "algorithms"
include Containers

# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def max_kelements(nums, k)
  heap = MaxHeap.new(nums)
  result = 0
  k.times do
    max = heap.pop
    result += max
    heap.push((max * 1.0 /3).ceil)
  end

  result
end
