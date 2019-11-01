# https://leetcode.com/problems/reverse-integer/
class ReverseInteger
  UPPER_BOUND = 2147483647
  LOWER_BOUND = -2147483648
  def self.reverse_integer(n)
    stack = []
    factor = 1
    factor = -1 if n < 0
    n = n.abs
    while n != 0 do
      rem = n % 10
      stack.push(rem)
      n = n / 10
    end
    out = stack.inject('') { |acc, i| acc << i.to_s }.to_i * factor
    out = 0 if (out > UPPER_BOUND) || (out < LOWER_BOUND)
    out
  end

  def self.is_palindrome(n)
    return false if n < 0
    return reverse_integer(n) == n
  end
end
