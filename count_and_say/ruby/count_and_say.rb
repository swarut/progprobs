# https://leetcode.com/problems/count-and-say/
class CountAndSay
  def count_and_say(n)
    if n == 1
      '1'
    elsif n == 2
      c(count_and_say(1))
    else
      c(count_and_say(n - 1))
    end
  end

  def c(s)
    result = s.split('').reduce({str: '', last: nil, count: 0}) do |acc, i|
      if i == acc[:last]
        acc[:count] += 1
      else
        acc[:str] << "#{acc[:count]}#{acc[:last]}" if acc[:last]
        acc[:count] = 1
        acc[:last] = i
      end
      acc
    end
    "#{result[:str]}#{result[:count]}#{result[:last]}"
  end
end
