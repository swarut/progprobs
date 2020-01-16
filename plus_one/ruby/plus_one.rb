# https://leetcode.com/problems/plus-one

class PlusOne

  class << self

    def solve(digits)
      index = digits.length - 1
      carry = 0
      while index >= 0 do
        if index == digits.length - 1
          digits[index] += 1
        else
          digits[index] += carry
        end

        if digits[index] >= 10
          digits[index] = 0
          carry = 1
        else
          carry = 0
        end

        index -= 1
      end
      if carry == 1
        digits.unshift(1)
      end
      digits
    end

  end

end
