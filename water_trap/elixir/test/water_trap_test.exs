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

  test "trap" do
    assert(WaterTrap.trap([0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 6]) == 9)
    assert(WaterTrap.trap([6, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 6]) == 47)
    assert(WaterTrap.trap([1, 7, 8]) == 0)
    assert(WaterTrap.trap([0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1]) == 6)
    assert(WaterTrap.trap([4, 2, 3]) == 1)
    assert(WaterTrap.trap([5, 5, 1, 7, 1, 1, 5, 2, 7, 6]) == 23)
    assert(WaterTrap.trap([4, 9, 4, 5, 3, 2]) == 1)
    assert(WaterTrap.trap([9, 6, 8, 8, 5, 6, 3]) == 3)
    assert(WaterTrap.trap([9, 6, 8, 8, 5, 6, 3]) == 3)
  end

end
