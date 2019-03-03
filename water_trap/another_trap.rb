class AnotherTrap

  def count_inbetween_zero(arr)
    arr.inject({stack: [], pending_zero_count: 0, zero_count: 0}) do |acc, i|
      stack = acc[:stack]

      if (stack.length == 0)
        if i == 1
          stack.push(i)
        end
      else
      end

      acc[:stack] = stack
    end
  end
end