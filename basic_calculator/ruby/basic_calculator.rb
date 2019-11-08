# https://leetcode.com/problems/basic-calculator/
class BasicCalculator

  OPERATORS = ['+', '-']

  def self.cal(s)
    result = s.gsub(' ', '').split(/(\))|(\()|(\+)|(\-)/).reject{ |d| d.empty? }.inject({stack: [], operants: []}) do |acc, i|
      if i == ')'
        i = acc[:stack].pop
        acc[:stack].pop
      end

      if !acc[:operants].empty? && (i != '(') && (acc[:stack].last != '(') && (!OPERATORS.include?(i))
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
    end[:stack].first.to_i

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
