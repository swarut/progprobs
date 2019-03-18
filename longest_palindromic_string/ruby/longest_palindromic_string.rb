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
    i = 1

    loop do
      puts "Scanning char at index #{current_index}, iteration: #{i}"

      if max_match == nil
        p = palindrome_string_with_right_index(str, current_index)
        max_match = p[0]
      else
        p = palindrome_string_with_right_index(str, current_index)
        max_match = p[0] if p[0].length > max_match.length
      end

      current_index = p[1]
      i = i + 1
      puts "----- p[0] = #{p[0]}, current_index = #{current_index}"
      break if current_index > end_index
    end

    max_match
  end

  def palindrome_string(str, index)
    palindrome_string_with_right_index(str, index)[0]
  end

  def palindrome_string_with_right_index(str, index)
    left_index = index - 1
    right_index = index + 1
    is_left_center_repeating = true
    is_right_center_repeating = true
    str_length = str.length
    center = str[index]
    i = 1
    loop do
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
      elsif is_left_out_of_bound && !is_right_out_of_bound && is_right_center_repeating
        right_index = right_index + 1
        next
      elsif is_right_out_of_bound && !is_left_out_of_bound && is_left_center_repeating
        left_index = left_index - 1
        next
      elsif is_left_out_of_bound || is_right_out_of_bound
        left_index = left_index + 1
        right_index = right_index - 1
        break
      end

      if (left != right)
        if is_left_center_repeating
          left_index = left_index - 1
        elsif is_right_center_repeating
          right_index = right_index + 1
        else
          left_index = left_index + 1
          right_index = right_index - 1
          break
        end
      else
        left_index = left_index - 1
        right_index = right_index + 1
      end
      i = i + 1
    end

    next_index = right_index == index ? index + 1 : right_index

    [str[left_index..right_index].join, next_index]
  end

end
