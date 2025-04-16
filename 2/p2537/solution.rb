# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def count_good(nums, k)
  n = nums.size
  result = pair = 0
  count = Hash.new(0)

  right = -1
  0.upto(n - 2) do |left|
    while pair < k && right < n - 1
      right += 1
      x = nums[right]
      pair += count[x]
      count[x] += 1
    end

    result += n - right if pair >= k

    x = nums[left]
    pair -= count[x] -= 1
  end

  result
end
