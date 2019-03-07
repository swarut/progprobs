# https://leetcode.com/problems/median-of-two-sorted-arrays/

class MedianOfTwoSortedArray
  def find_median_sorted_arrays(n1, n2)
    # n1, n2 are not overlapped
    if (n1.last <= n2.first) || (n2.last <= n1.first)
      all_length = n1.length + n2.length
      m_index = (all_length) % 2 == 0 ? (all_length/2 - 1) : all_length/2
      all = n1 + n2
      if (all_length) % 2 == 0
        m_index = (all_length/2 - 1)
        return (all[m_index] + all[m_index + 1])/2.0
      else
        m_index = all_length/2
      end
    end
  end
end
