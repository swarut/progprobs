defmodule WaterTrapTest do
  use ExUnit.Case
  doctest WaterTrap

  test "count_inbetween_zero" do
    assert(WaterTrap.count_inbetween_zero([1, 0, 0, 1]) == 2)
    assert(WaterTrap.count_inbetween_zero([1, 0, 1, 0, 0, 1]) == 3)
    assert(WaterTrap.count_inbetween_zero([1, 0, 1]) == 1)
    assert(WaterTrap.count_inbetween_zero([0, 1, 0, 1]) == 1)
    assert(WaterTrap.count_inbetween_zero([1, 0, 1, 0]) == 1)
  end

  test "slice_pane" do
    assert(WaterTrap.slice_pane([1, 1, 1], 0) == [1, 1 ,1 ])
    assert(WaterTrap.slice_pane([1, 1, 1], 1) == [0, 0, 0])
    assert(WaterTrap.slice_pane([1, 1, 1], 0) == [1, 1 ,1 ])
    assert(WaterTrap.slice_pane([2, 2], 0) == [1, 1])
    assert(WaterTrap.slice_pane([2, 2], 1) == [1, 1])
    assert(WaterTrap.slice_pane([2, 2], 2) == [0, 0])
    assert(WaterTrap.slice_pane([2, 1], 0) == [1, 1])
    assert(WaterTrap.slice_pane([2, 1], 1) == [1, 0])
    assert(WaterTrap.slice_pane([1, 2], 0) == [1, 1])
    assert(WaterTrap.slice_pane([1, 2], 1) == [0, 1])
  end

end
