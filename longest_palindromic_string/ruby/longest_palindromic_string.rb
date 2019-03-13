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
    left_index = index - 1
    right_index = index + 1
    is_left_center_repeating = true
    is_right_center_repeating = true
    str_length = str.length
    loop do
      left = left_index < 0 ? nil : str[left_index]
      right = right_index > str_length ? nil : str[right_index]

      is_left_center_repeating = false if
    end
  end
end
