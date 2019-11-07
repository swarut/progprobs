# https://leetcode.com/problems/longest-common-prefix/
class LongestCommonPrefix
  def self.l(arr)
    return '' if arr.length == 0
    arr.sort! { |a, b| a.length <=> b.length }
    i = 0
    longest_common_prefix = ''
    while i < arr[0].length do
      if arr.map{ |str| str[i] }.uniq.length == 1
        longest_common_prefix.concat(arr[0][i])
      else
        break
      end
      i += 1
    end
    longest_common_prefix
  end

end
