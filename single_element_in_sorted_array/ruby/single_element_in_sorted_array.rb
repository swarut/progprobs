# https://leetcode.com/problems/single-element-in-a-sorted-array/

class SingleElementInSortedArray
  def single_non_duplicate(nums)
    puts "---processing #{nums}"
    if nums.length == 2
      return nums[1] if nums[0] != nums[1]
    elsif nums.length == 3
      find_uniq(nums)
    else
      pivot = nums.length / 2
      new_length = nums.length - 1

      return nums[pivot] if (nums[pivot] != nums[pivot - 1]) && (nums[pivot] != nums[pivot + 1])

      if new_length % 2 == 0
        return single_non_duplicate(nums[(pivot + 1)...nums.length]) if (nums[pivot] == nums[pivot + 1])
        return single_non_duplicate(nums[0..(pivot - 1)])
      else
        return single_non_duplicate(nums[0..(pivot - 1)]) if (nums[pivot] == nums[pivot + 1])
        return single_non_duplicate(nums[(pivot + 1)...nums.length])
      end
    end
  end

  def find_uniq(array_of_3)
    return array_of_3[2] if array_of_3[1] == array_of_3[0]
    return array_of_3[0] if array_of_3[1] == array_of_3[2]
  end
end
