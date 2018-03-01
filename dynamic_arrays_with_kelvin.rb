def one_search(array)
  return 0 if array.length == 1
  mid = array.length / 2

  left = array[0..mid]
  right = array[mid..-1]

  if left.last == right.first
    right.push(left.pop)
  end

  left.length.odd? ? one_search(left) : one_search(right) + mid
end

# find how to solve the problem. the log(n) complexity here tells us that it is a binary search like problem


def well_formed(str)
  left chars = []

  lookup = {
    '(' => ')',
    '[' => ']'
    '{' => '}'
  }

  str.chars.each do |char|
    if lookup.keys.include?(char)
      left_chars << char
    elsif left_chars.length == 0 || lookup[left_chars.pop] != char
      return false
    end
  end
    return left_chars.empty?
end

# fail case: the most recently opened left doesn't match the current right
#
# there need to be enough lefts to match the rights
