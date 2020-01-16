class MaximumSubarray

  class << self
    def solve(n)
      return n.first if n.length == 1
      n.reduce({max_so_far: n.first, current_sum: 0}) do |acc, i|
        acc[:current_sum] = [i, acc[:current_sum] + i].max
        acc[:max_so_far] = [i, acc[:current_sum], acc[:max_so_far]].max
        acc
      end[:max_so_far]
    end
  end

end
