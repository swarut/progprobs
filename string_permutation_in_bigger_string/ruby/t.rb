def subset(arr)
  arr2 = []
  arr.sort!
  backtrack(arr2, [], arr, 0)
  arr2
end

def backtrack(list, temp_list, nums, start)
  puts "-- backtrack(list = #{list}, temp_list = #{temp_list}, nums = #{nums}, start = #{start})"
  list.push(temp_list)
  puts "\t\t list = #{list}"
  i = start
  while i < nums.length
   temp_list.push(nums[i])
   backtrack(list, temp_list, nums, i + 1)
   temp_list.delete_at(temp_list.length - 1)
   i += 1
  end
end

def yo
  puts "yo"
end
