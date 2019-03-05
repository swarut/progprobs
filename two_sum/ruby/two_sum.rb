# https://leetcode.com/problems/two-sum/
class TwoSum
  def two_sum(nums, target)
    nums.inject({lookup: {}, index: 0}) do |acc, i|
      diff = target - i
      lookup = acc[:lookup]
      index = acc[:index]
      if lookup[i]
        return [lookup[i], index]
      end
      lookup[diff] = index
      acc[:index] = acc[:index] + 1
      acc
    end
  end
end
