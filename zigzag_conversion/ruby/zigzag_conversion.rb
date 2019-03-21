# ZigzagConversion

class ZigzagConversion
  def convert(s, num_rows)
    count = 0
    current_index = 0
    shifter = 0
    res = []
    loop do
      break if shifter >= num_rows
      puts "current_index = #{current_index}"
      res.push res[current_index]
      current_index = current_index + ((2 * num_rows) - 3) + 1
      if current_index > s.length
        shifter = shifter + 1
        current_index = shifter
      end
    end
  end
end



# 0        10          20
# 1      9 11       19 21
# 2    8   12     18   22
# 3   7    13   17     23
# 4 6      14 16       24
# 5        15          25

# 5 -> 7
# 0     8        16
# 1   7 9      15
# 2  6  10   14
# 3 5   11 13
# 4     12


# 4 -> 5
# 0     6      12       18
# 1   5 7   11 13    17
# 2 4   8 10   14 16
# 3     9      15


# 3 -> 3
# 0   4   8
# 1 3 5 7
# 2   6

# n - 1 + n - 2
# 2n - 3