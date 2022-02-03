defmodule AdventOfCode.Y2021.Day01Test do
  @moduledoc false

  use ExUnit.Case
  @moduletag :y2101

  alias AdventOfCode.Y2021.Day01, as: Solution

  test "Day 1 Part 1" do
    assert Solution.part_1() == 1154
  end

  test "Day 1 Part 2" do
    assert Solution.part_2() == 1127
  end
end
