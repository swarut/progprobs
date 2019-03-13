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
    is_center_repeating = true
    i = 0
    all_length = str.length
    loop do
      left = left_index < 0 ? nil : str[left_index]
      right = right_index > all_length ? nil : str[right_index]
      is_center_repeating = false if (right != str[index]) && (right != nil)
      puts "---- loop #{i}"
      puts "-------left index = #{left_index}, value = #{left}"
      puts "-------right index = #{right_index}, value = #{right}"
      puts "-------is_center_repeating = #{is_center_repeating}"

      if (!is_center_repeating && (left != right)) || ((left == nil) || (right == nil))
        left_index = left_index + 1 if !is_center_repeating
        right_index = right_index - 1
        break
      # elsif (left == nil) || (right == nil)
      #   puts "---------------------------------------------booooomm------------"
      #   left_index = left_index + 1 if right != nil
      #   right_index = right_index - 1 if left != nil
      #   break
      else
        if is_center_repeating
          right_index = right_index + 1
        else
          left_index = left_index - 1
          right_index = right_index + 1
        end
      end
      i = i + 1
    end
    puts "------final left_index = #{left_index}, right_index = #{right_index}"

    if is_center_repeating
      if str[left_index] == str[right_index]
        return str[left_index..right_index].join
      else
        return str[(left_index + 1)..right_index].join
      end
    end

    str[left_index..right_index].join
  end
end
