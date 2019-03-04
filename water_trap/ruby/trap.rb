# https://leetcode.com/problems/trapping-rain-water/
class Trap
  # @param {Integer[]} height
  # @return {Integer}
  def trap(height)
    return 0 if height.length < 2
    peaks = get_peaks(height)
    puts "========================"
    puts peaks
    peak_indexes = peaks[:peak_indexes]
    peak_values = peaks[:peak_values]

  end

  def vol(els)
    min = [els.first, els.last].min
    els.inject(0) do |acc, e|
        acc = acc + (min - e) if e <= min
        acc
    end
  end

  def get_peaks(height)

    return height.first if height.length == 1
    return height.max if height.length == 2

    height.inject({peak_indexes: [], peak_values: [], prev_trend: 0, index: 0}) do |acc, h|

      index = acc[:index]

      if index != (height.length - 1)
        # Figure out trend
        trend = h - height[index + 1]
        trend = trend == 0 ? 0 : trend > 0 ? -1 : 1

        prev_trend = acc[:prev_trend]

        # puts "index: #{index}, h: #{h}, next_h: #{height[index + 1]} trend: #{trend}, prev_trend: #{prev_trend}"

        if (trend < 0) && (trend != prev_trend)
          # Found peak
          acc[:peak_indexes].push(index)
          acc[:peak_values].push(h)
        end

        acc[:index] = index + 1
        acc[:prev_trend] = trend
      else
        if (h - height[index - 1]) > 0
          acc[:peak_indexes].push(index)
          acc[:peak_values].push(h)
        end
      end

      acc
    end
  end
end


# def get_peaks(height)
#   height.inject({peak_indexes: [], peak_values: [], prev: 0, prev_trend: 0, index: 0}) do |acc, h|
#       trend = (h - acc[:prev])
#       trend = -1 if trend < 0
#       trend = 1 if trend > 0
#       prev_trend = acc[:prev_trend]
#       # puts "get_peaks: trend = #{trend}, prev trend = #{prev_trend}"
#       if (trend <= 0) && (trend != prev_trend) && (prev_trend != 0)
#           # puts "get_peaks: at h = #{h}, figure out peak = #{acc[:prev]} at index = #{acc[:index] - 1}"
#           acc[:peak_indexes].push(acc[:index] - 1)
#           acc[:peak_values].push(acc[:prev])
#       end

#       acc[:prev] = h
#       acc[:prev_trend] = trend
#       acc[:index] = acc[:index] + 1

#       # puts "get_peaks: end loop, acc[:index] = #{acc[:index]}, peaks.last = #{acc[:peak_indexes].last}"
#       # puts "-------------"

#       # if (acc[:index] == height.length) && (acc[:peak_indexes].length > 0) && (height[acc[:peak_indexes].last] <= h)
#       if (acc[:index] == height.length) && (acc[:peak_indexes].length > 0) && (trend >= 0)
#           # last item, keep it if it is ascending.
#           # puts "-----------pick last -------"
#           acc[:peak_indexes] = acc[:peak_indexes].push(acc[:index] - 1)
#           acc[:peak_values] = acc[:peak_values].push(h)
#       end
#       acc
#   end
# end

# def trap(height)
#   return 0 if height.length < 2
#   peaks = get_peaks(height)
#   puts "========================"
#   puts peaks
#   peak_indexes = peaks[:peak_indexes]
#   peak_values = peaks[:peak_values]


#   res = peak_values.inject({holes: [], start_point: nil, start_point_index: nil, index: 0, current_hole: []}) do |acc, p|
#       start_point = acc[:start_point]
#       index = acc[:index]
#       if start_point
#           if p >= start_point
#               acc[:current_hole] = acc[:current_hole].push(peak_indexes[index])
#               acc[:holes] = acc[:holes].push(acc[:current_hole])
#               acc[:start_point] = nil

#               acc[:start_point] = peak_values[index]
#               # acc[:start_point_index] = peak_indexes[index]]
#               acc[:current_hole] = [peak_indexes[index]]
#           end
#       else
#           acc[:start_point] = peak_values[index]
#           # acc[:start_point_index] = peak_indexes[index]]
#           acc[:current_hole] = [peak_indexes[index]]
#       end
#       acc[:index] = index + 1
#       acc
#   end
#   puts "---------"
#   puts res
#   puts "---------"
#   if res[:current_hole].length == 1
#       res[:holes].push(res[:current_hole].push(peak_indexes[res[:index] - 1]))
#   end
#   puts res

#   ranges = res[:holes]
#   ranges.map do |range|
#       vol(height[range[0]..range[1]])
#   end.sum
# end