# https://leetcode.com/problems/basic-calculator/
class BasicCalculator

  OPERATORS = ['+', '-']

  def self.cal(s)
    result = s.gsub(' ', '').split(/(\))|(\()|(\+)|(\-)/).reject{ |d| d.empty? }.inject({ result: 0, stack: [], operants: []}) do |acc, i|
      # puts "READ ::: #{i}"
      # puts "Before: #{acc}"
      if i == ')'
        # puts "---- compute within ()"
        i = acc[:stack].pop
        acc[:stack].pop
      end

      if !acc[:operants].empty? && (i != '(') && (acc[:stack].last != '(') && (!OPERATORS.include?(i))
        # puts "---- compute"
        result = compute(acc[:stack].pop.to_i, i.to_i, acc[:operants].pop)
        acc[:stack].push result
      else
        if OPERATORS.include?(i)
          # puts "---- add operant"
          acc[:operants].push(i)
        elsif i == '('
          # puts "---- add ("
          acc[:stack].push i
        else
          # puts "---- add #{i} to stack"
          acc[:stack].push(i)
        end
      end
      # puts "After: #{acc}"
      # puts "===========================\n\n\n"
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
