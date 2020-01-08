# https://leetcode.com/problems/search-insert-position/
class SearchInsertPosition
  def search_insert_position(arr, value)
    arr.reduce(0) do |acc, i|
      acc += 1 if value > i
      break acc if value < i
      acc
    end
  end
end