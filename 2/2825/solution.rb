# @param {String} str1
# @param {String} str2
# @return {Boolean}
def can_make_subsequence(str1, str2)
  i = j = 0
  m, n = str1.size, str2.size

  while i < m && j < n
    d = str2[j].ord - str1[i].ord
    j += 1 if d == 0 || d == 1 || d == -25

    i += 1
  end

  j == n
end
