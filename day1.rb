def longest_common_substring(str1, str2)
  longest_substring = ""
  start_idx = 0

  while start_idx < str1.length
    len = longest_substring.length + 1

    while (start_idx + len) <= str1.length
      end_idx = start_idx + len
      substring = str1[start_idx...end_idx]
      longest_substring = substring if str2.include?(substring)

      len += 1
    end

    start_idx += 1
  end

  longest_substring
end


def sum_rec(nums)
  return 0 if nums.empty?
  nums[0] + sum_rec(nums.drop(1))
end
