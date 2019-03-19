# https://leetcode.com/problems/single-element-in-a-sorted-array/

class SingleElementInSortedArray
  def single_non_duplicate(nums, pivot_lookup = [])
    puts "---processing #{nums}, pivot_lookup = #{pivot_lookup}"
    if nums.length == 2
      return (nums - pivot_lookup).first
    elsif nums.length == 3
      find_uniq(nums)
    else
      pivot_index = nums.length / 2
      new_length = (nums.length - 1)/2
      pivot_lookup.push(nums[pivot_index])

      return nums[pivot_index] if (nums[pivot_index] != nums[pivot_index - 1]) && (nums[pivot_index] != nums[pivot_index + 1])

      if (nums[pivot_index] == nums[pivot_index + 1])
        if (nums.length - pivot_index) % 2 == 1
          return single_non_duplicate(nums[pivot_index...nums.length], pivot_lookup)
        else
          return single_non_duplicate(nums[0..(pivot_index - 1)], pivot_lookup)
        end

      elsif (nums[pivot_index] == nums[pivot_index -1])
        if (pivot_index + 1) % 2 == 1
          return single_non_duplicate(nums[0..pivot_index], pivot_lookup)
        else
          return single_non_duplicate(nums[(pivot_index + 1)..nums.length], pivot_lookup)
        end
      end

    end
  end

  def find_uniq(array_of_3)
    return array_of_3[2] if array_of_3[1] == array_of_3[0]
    return array_of_3[0] if array_of_3[1] == array_of_3[2]
  end
end
