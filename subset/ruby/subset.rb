class Subset
  @counter = 1

  def self.subset(array)
    result = []
    array.sort!
    backtrack(result, [], array, 0, 0)
    result
  end

  def self.backtrack(result_array, temp_list, arr, start, depth)
    puts "#{"\t"*depth}============="
    puts "#{"\t"*depth}backtrack: #{@counter}"
    puts "#{"\t"*depth}result_array = #{result_array}"
    puts "#{"\t"*depth}temp_list = #{temp_list}"
    puts "#{"\t"*depth}start = #{start}"
    puts "#{"\t"*depth}============="
    @counter = @counter + 1
    result_array.push([] + temp_list)
    (start...arr.length).each do |i|
      temp_list.push(arr[i])
      backtrack(result_array, temp_list, arr, i + 1, depth + 1)
      temp_list.delete_at(temp_list.length - 1)
    end
    return
  end
end

res = Subset.subset([0,1,2])
