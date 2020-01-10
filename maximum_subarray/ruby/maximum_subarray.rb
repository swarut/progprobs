class MaximumSubarray

  class << self
    def solve(n)
      n.reduce(0) do |acc, i|
        if i > acc
          puts "---0"
          acc = i
        else
          puts "---1"
          sum = i + acc
          acc = sum if sum > acc
        end
        acc
      end
    end
  end

end
