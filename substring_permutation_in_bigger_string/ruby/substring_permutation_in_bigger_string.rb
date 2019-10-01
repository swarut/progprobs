# Given two string, find and locate all substrings of the first string
# that appear in the second string which is bigger than the first one.

class SubstringPermutationInBiggerString
  def substring_permutation_in_bigger_string(short_string, long_string)
    short_string_char_lookups = char_lookup(short_string)

    # acc = { index: 0, hold: [], substrings: {item: [location]}}
    # WIP: Should handle the case where substring has more chars than the original first string.
    long_string.split('').inject({index: 0, hold: [], substrings: {}}) do |acc, char|
      if short_string_char_lookups[char]
        acc[:hold] << char
        subs = ""
        index_cursor = 0
        acc[:hold].reverse_each do |c|
          subs.prepend(c)
          acc[:substrings][subs] = [] if !acc[:substrings][subs]
          acc[:substrings][subs].push(acc[:index] + index_cursor)
          index_cursor = index_cursor - 1
        end
      else
        acc[:hold] = []
      end
      acc[:index] = acc[:index] + 1
      acc
    end[:substrings]
  end

  def char_lookup(string)
    string.split('').inject({}) { |acc, char| acc[char] = true; acc }
  end
end
