# https://leetcode.com/problems/median-of-two-sorted-arrays/

class MedianOfTwoSortedArray
  def find_median_sorted_arrays(n1, n2)

    if n1.empty?
      return median(n2)
    end
    if n2.empty?
        return median(n1)
    end

    all_length = n1.length + n2.length
    # n1, n2 are not overlapped
    if (n1.last <= n2.first) || (n2.last <= n1.first)
      all = n1 + n2 if (n1.last <= n2.first)
      all = n2 + n1 if (n2.last <= n1.first)
      return median(all)
    else
      # n1, n2 are overlapped
      stop_index = all_length / 2
      merged_array = []
      current_index = 0
      first_array_index = 0
      second_array_index = 0
      loop do
        break if current_index > stop_index
        v1 = n1[first_array_index]
        v2 = n2[second_array_index]
        if (v1 == nil)
          merged_array.push(n2[second_array_index])
          second_array_index = second_array_index + 1
        elsif (v2 == nil)
          merged_array.push(n1[first_array_index])
          first_array_index = first_array_index + 1
        else
          if (v1 <= v2)
            merged_array.push(n1[first_array_index])
            first_array_index = first_array_index + 1
          elsif (v1 > v2)
            merged_array.push(n2[second_array_index])
            second_array_index = second_array_index + 1
          end
        end

        current_index = current_index + 1
      end
      puts "--------stop index = #{stop_index}"
      puts "--------merged array = #{merged_array}"
      if all_length % 2 == 0
        return (merged_array[merged_array.length - 1] + merged_array[merged_array.length - 2])/2.0
      else
        return merged_array.last
      end
    end
  end

  def median(arr)
    if (arr.length % 2 == 0)
      index = (arr.length / 2) - 1
      return (arr[index] + arr[index + 1])/2.0
    else
      index = arr.length / 2
      return arr[index]
    end
  end
end
