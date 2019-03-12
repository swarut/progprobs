# https://leetcode.com/problems/longest-palindromic-substring/

class LongestPalindromicString

  def longest_palindrome(str)
    str = str.split('')
    return str.join if str.length <= 1
    return (str.first == str.last ? str.join : str.first) if str.length == 2

    max_match = nil
    palindromic_ss = []
    start_index = 1
    end_index = str.length - 2
    current_index = start_index

    loop do
      # palindromic_ss.push(palindrome_string(str, current_index))
      if max_match == nil
        max_match = palindrome_string(str, current_index)
      else
        p = palindrome_string(str, current_index)
        max_match = p if p.length > max_match.length
      end
      current_index = current_index + 1
      break if current_index == end_index
    end

    max_match
  end

  def palindrome_string(str, index)
    times = 0
    loop do
      left_index = index - (1 * (times + 1))
      right_index = index + (1 * (times + 1))
      left = left_index >= 0 ? str[left_index] : nil
      right = str[right_index]
      # puts "str = #{str}, times = #{times}"
      # puts "left-index #{left_index}, right-index #{right_index}"
      # puts "left = #{left}, right = #{right}"
      # puts "--------"

      break if (left != right) || (left == nil) || (right == nil)
      times = times + 1
    end

    str[(index - times)..(index + times)].join
  end
end
