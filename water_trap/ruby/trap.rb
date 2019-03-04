# https://leetcode.com/problems/trapping-rain-water/

# Idea:
# Iterate through collection once and find the peaks.
# Go through the list of peak, try to map one peak to the next peak that is equal or higher.
# If there was no such peak, try to map the peak to the max peak of the remaining peak.
# Remove the mapped peaks, then iterate through the remaining peaks.
# Finally, calculate the volumne between peaks and sum up.

class Trap
  def trap(height)
    return 0 if height.length <= 2
    peaks = get_peaks(height)

    data = peaks[:peak_indexes].zip(peaks[:peak_values]).map { |d| {index: d[0], value: d[1]}}

    holes = []
    i = 0

    loop do
      break if data.length == 1
      start_index = data.first[:index]
      start_value = data.first[:value]
      search_space = data.slice(1, data.length).collect { |d| d[:value] }
      next_peak_index = next_peak(start_value, search_space) + 1
      end_index = data[next_peak_index][:index]
      holes.push([start_index, end_index])
      data = data.slice(next_peak_index, data.length)
      i = i + 1
    end

    holes.map { |range| vol(height[range[0]..range[1]]) }.inject(0) { |acc, i| acc + i }
  end

  def next_peak(current_peak, peaks)
    current_max_not_exceeding_peak = 0
    current_max_not_exceeding_peak_index = nil
    peaks.each_with_index do |p, index|
      return index if p >= current_peak
      if p > current_max_not_exceeding_peak
        current_max_not_exceeding_peak = p
        current_max_not_exceeding_peak_index = index
      end
    end
    current_max_not_exceeding_peak_index
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

        if ((trend < 0) && (trend != prev_trend) || (prev_trend == 1 && trend == 0))
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
