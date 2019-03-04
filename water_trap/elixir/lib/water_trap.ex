defmodule WaterTrap do

  def count_inbetween_zero(list) do
    count_inbetween_zero(list, %{stack: [], pending_zero_count: 0, zero_count: 0})
  end
  def count_inbetween_zero([h | t], acc = %{stack: stack, pending_zero_count: _pending_zero_count, zero_count: _zero_count}) when stack == [] and h == 0 do
    count_inbetween_zero(t, acc)
  end
  def count_inbetween_zero([h | t], acc = %{stack: stack, pending_zero_count: _pending_zero_count, zero_count: _zero_count}) when stack == [] and h == 1 do
    acc = Map.put(acc, :stack, [1])
    count_inbetween_zero(t, acc)
  end
  def count_inbetween_zero([h | t], acc = %{stack: stack, pending_zero_count: pending_zero_count, zero_count: _zero_count}) when stack == [1] and h == 0 do
    acc = Map.put(acc, :pending_zero_count, pending_zero_count + 1)
    count_inbetween_zero(t, acc)
  end
  def count_inbetween_zero([h | t], acc = %{stack: stack, pending_zero_count: pending_zero_count, zero_count: zero_count}) when stack == [1] and h == 1 do
    acc = acc
    |> Map.put(:zero_count, zero_count + pending_zero_count)
    |> Map.put(:pending_zero_count, 0)
    count_inbetween_zero(t, acc)
  end
  def count_inbetween_zero([], %{zero_count: zero_count}) do; zero_count end

  def slice_pane(list, offset) do
    Enum.map(list, fn(i) ->
      cond do
        i - offset > 0 -> 1
        i - offset <= 0 -> 0
      end
    end)
  end

  def trap(list) do
    max = Enum.max(list)

    0..(max - 1)
    |> Enum.to_list()
    |> Enum.reduce(0, fn(i, acc) ->
      acc + count_inbetween_zero(slice_pane(list, i))
    end)
  end


end
