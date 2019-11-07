defmodule BasicCalculatorTest do
  use ExUnit.Case
  doctest BasicCalculator

  test "greets the world" do
    assert BasicCalculator.hello() == :world
  end
end
