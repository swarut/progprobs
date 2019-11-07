# https://leetcode.com/problems/valid-parentheses/
class ValidParentheses

  MATCHERS = {
    '(' => ')',
    '{' => '}',
    '[' => ']'
  }

  def self.valid_parentheses(s)
    res = s.split('').inject({ stack: []}) do |acc, i|
      if acc[:stack].empty?
        acc[:stack].push(i)
      else
        if MATCHERS[acc[:stack].last] == i
          acc[:stack].pop
        else
          acc[:stack].push(i)
        end
      end
      acc
    end
    res[:stack].empty?
  end

end
