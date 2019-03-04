defmodule WaterTrapTest do
  use ExUnit.Case
  doctest WaterTrap

  test "slice_pane" do
    assert(WaterTrap.slice_pane([1, 1, 1])) == [[1, 1, 1]]
    # assert(WaterTrap.slice_pane([2, 2, 2])) == [[1, 1, 1], [1, 1, 1]]
    # assert(WaterTrap.slice_pane([2, 3, 2])) == [[1, 1, 1], [1, 1, 1], [0, 1, 0]]
    # assert(WaterTrap.slice_pane([3, 2, 3])) == [[1, 1, 1], [1, 1, 1], [1, 0, 1]]
    # assert(WaterTrap.slice_pane([4, 2, 3])) == [[1, 1, 1], [1, 1, 1], [1, 0, 1], [1, 0, 0]]
    # assert(WaterTrap.slice_pane([4, 0, 0, 3])) == [[1, 0, 0, 1], [1, 0, 0, 1], [1, 0, 0 ,1], [1, 0, 0, 0]]
  end

end
