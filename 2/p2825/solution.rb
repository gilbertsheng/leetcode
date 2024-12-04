# @param {String} str1
# @param {String} str2
# @return {Boolean}
def can_make_subsequence(str1, str2)
  i = j = 0
  m, n = str1.size, str2.size

  increment = ->(x) { x == 'z' ? 'a' : x.next }

  while i < m && j < n
    a, b = str1[i], str2[j]

    j += 1 if b == a || b == increment[a]

    i += 1
  end

  j == n
end
