# https://leetcode.com/problems/longest-substring-without-repeating-characters/

class LongestSubstringNoRepeat
  def length_of_longest_substring(s)
    found_chars = {}

    current_substring_length = 0
    current_start_index = 0
    max_substring_length = 0
    index = 0

    s.split('').each do |st|
      if (found_chars[st] != nil) && (found_chars[st] >= current_start_index)
          max_substring_length = [current_substring_length, max_substring_length].max
          current_substring_length = (index - found_chars[st])
          current_start_index = found_chars[st]
          found_chars[st] = index
      else
          found_chars[st] = index
          current_substring_length = current_substring_length + 1
      end

      index = index + 1
    end
    [current_substring_length, max_substring_length].max
  end
end
