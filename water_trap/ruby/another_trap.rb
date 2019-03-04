# Simple but not efficient.
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

  def slice_pane(arr)
    max = arr.max
    (0...max).to_a.inject([]) do |acc, i|
      acc.push(arr.map { |p| p - i > 0 ? 1 : 0 })
    end
  end

  def slice_single_pane_with_offset(arr, offset)
    max = arr.max
    return [] if offset > (max - 1)
    arr.map { |p| p - offset > 0 ? 1 : 0 }
  end

  def trap(height)
    return 0 if height.length < 2
    slices = slice_pane(height)
    vol_per_slice = slices.map { |s| count_inbetween_zero(s) }
    vol_per_slice.inject(0) { |acc, i| acc + i}
  end

  def trap_with_min_removeal(height)
    return 0 if height.length < 2
    min = height.min
    height = height.map { |d| d - min }
    slices = slice_pane(height)
    vol_per_slice = slices.map { |s| count_inbetween_zero(s) }
    vol_per_slice.inject(0) { |acc, i| acc + i}
  end

  # Better memory consumption
  def lazy_trap(height)
    return 0 if height.length < 2
    min = height.min
    height = height.map { |d| d - min }
    (0...height.max).inject(0) do |acc, i|
      count_inbetween_zero(slice_single_pane_with_offset(height, i))
    end
  end

end
