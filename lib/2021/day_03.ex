defmodule AdventOfCode.Y2021.Day03 do
  def part_1, do: parse_puzzle_input!() |> IO.puts()
  # def part_2, do: parse_puzzle_input!() |> calculate_aim()

  def parse_puzzle_input!() do
    :code.priv_dir(:advent_of_code)
    |> Path.join("2021_3.txt")
    |> File.read!()
    |> String.split("\n", trim: true)
  end
end
