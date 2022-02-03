defmodule AdventOfCode.Y2021.Day02Test do
  @moduledoc false

  use ExUnit.Case
  @moduletag :y2101

  alias AdventOfCode.Y2021.Day02, as: Solution

  test "Day 2 Part 1" do
    assert Solution.part_1() == 1_488_669
  end

  test "Day 2 Part 2" do
    assert Solution.part_2() == 1_176_514_794
  end
end
