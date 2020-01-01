# https://leetcode.com/problems/remove-duplicates-from-sorted-array/
class RemoveDuplicatedFromSortedArray
  def solve(input)
    i = 0
    last = nil
    new_length = 0
    loop do
      val = input[i]
      break if !val
      if val != last
        new_length += 1
      end
      last = input[i]
      i += 1
    end
    new_length
  end
end