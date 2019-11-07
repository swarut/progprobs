# https://leetcode.com/problems/basic-calculator/
class BasicCalculator

  MATCHERS = {

  }
  OPERATORS = ['+', '-']

  def cal(s)
    s.gsub(' ', '').split('').inject({ result: 0, stack: [], groups: [], last: nil}) do |acc, i|
      acc[:stack].push(i)

    end
  end
end
