class AnotherTrap

  def count_inbetween_zero(arr)
    arr.inject({stack: [], pending_zero_count: 0, zero_count: 0}) do |acc, i|
      stack = acc[:stack]

      if (stack.length == 0) && (i == 1)
        stack.push(i)
      else
        if (stack.last == 1) && (i == 1)
          acc[:zero_count] = acc[:zero_count] + acc[:pending_zero_count]
          acc[:pending_zero_count] = 0
        elsif (stack.last == 1) && (i == 0)
          acc[:pending_zero_count] = acc[:pending_zero_count] + 1
        end
      end

      acc[:stack] = stack
      acc
    end[:zero_count]
  end

end
