# https://leetcode.com/problems/longest-palindromic-substring/

class LongestPalindromicString

  def longest_palindrome(str)
    str = str.split('')
    return str.join if str.length <= 1
    return (str.first == str.last ? str.join : str.first) if str.length == 2

    max_match = nil
    start_index = 1
    end_index = str.length - 2
    current_index = start_index

    loop do
      if max_match == nil
        max_match = palindrome_string(str, current_index)
      else
        p = palindrome_string(str, current_index)
        max_match = p if p.length > max_match.length
      end
      current_index = current_index + 1
      break if current_index >= end_index
    end

    max_match
  end

  def palindrome_string(str, index)
    puts "-processing string #{str}, index #{index}"
    left_index = index - 1
    right_index = index + 1
    is_left_center_repeating = true
    is_right_center_repeating = true
    str_length = str.length
    center = str[index]
    loop do
      puts "------loop: left_index = #{left_index}, right_index = #{right_index}"
      is_left_out_of_bound  = left_index < 0
      is_right_out_of_bound = right_index >= str_length
      is_left_right_out_of_bound = is_left_out_of_bound && is_right_out_of_bound

      left = is_left_out_of_bound ? nil : str[left_index]
      right = is_right_out_of_bound ? nil : str[right_index]

      is_left_center_repeating = false if (left != nil) && (left != center)
      is_right_center_repeating = false if (right != nil) && (right != center)

      if is_left_right_out_of_bound
        left_index = left_index + 1
        right_index = right_index - 1
        break
      elsif is_left_out_of_bound || is_right_out_of_bound
        left_index = left_index + 1
        right_index = right_index - 1
        break
      end

      if (left != right)
        if is_left_center_repeating
          left_index = left_index - 1
          # right_index = right_index - 1
          # break
        elsif is_right_center_repeating
          right_index = right_index + 1
          # left_index = left_index + 1
          # break
        else
          left_index = left_index + 1
          right_index = right_index - 1
          break
        end
      else
        left_index = left_index - 1
        right_index = right_index + 1
      end

    end
    puts "left_index = #{left_index}, right_index=#{right_index}"
    str[left_index..right_index].join
  end

end
