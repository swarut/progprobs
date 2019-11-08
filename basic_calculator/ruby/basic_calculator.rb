# https://leetcode.com/problems/basic-calculator/
class BasicCalculator

  MATCHERS = ['(', ')']
  OPERATORS = ['+', '-']

  def self.cal(s)
    result = s.gsub(' ', '').split(/(\+)|(\-)/).inject({ result: 0, stack: [], operants: []}) do |acc, i|
      if !acc[:operants].empty?
        result = compute(acc[:stack].pop.to_i, i.to_i, acc[:operants].pop)
        acc[:stack].push result
      else
        if OPERATORS.include?(i)
          acc[:operants].push(i)
        else
          acc[:stack].push(i)
        end
      end
      acc
    end[:stack].first

  end

  def self.compute(a, b, operant)
    case operant
    when '+'
      a + b
    when '-'
      a - b
    end
  end

end
