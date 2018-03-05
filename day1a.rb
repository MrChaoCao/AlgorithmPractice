def longest_common_substring(str1, str2)
  r = ''
  i = 0

  while i < str1.length
    r = str1[i] if str2.include(str1[i])
    j = 1
    while i + j < str1.length
      r = str1.slice(i,j) if str2.include(str.slice(i,j))
    end
  end

  r
end


plain english explanation
did better on speaking slower and quieter
