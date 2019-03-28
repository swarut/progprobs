# ZigzagConversion

class ZigzagConversion
  def convert(s, num_rows)
    direction = 1
    group = 0
    res = {}
    s.split('').each_with_index do |char, index|
      gput(res, group, char)
      if direction == 1
        group = group + 1
        direction = -1 if group == (num_rows - 1)
      elsif direction == -1
        group = group - 1
        direction = 1 if group == 0
      end
    end
    res.keys.sort.map do |key|
      res[key].join
    end.join
  end
  def gput(res, key, value)
    if res[key] != nil
      res[key].push(value)
    else
      res[key] = [value]
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
