# @param {Integer[]} arr
# @return {Integer}
def find_length_of_shortest_subarray(arr)
  n = arr.size
  right = n - 1
  right -= 1 while right > 0 && arr[right - 1] <= arr[right]

  result = right
  left = 0
  while left < right && (left.zero? || arr[left - 1] <= arr[left])
    right += 1 while right < n && arr[right] < arr[left]

    len = right - left - 1
    result = len if len < result

    left += 1
  end

  result
end
