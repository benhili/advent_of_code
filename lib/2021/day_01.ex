defmodule AdventOfCode.Y2021.Day01 do
  def part_1, do: parse_puzzle_input!() |> depth_increases()
  def part_2, do: parse_puzzle_input!() |> sliding_window() |> depth_increases()

  def parse_puzzle_input!() do
    :code.priv_dir(:advent_of_code)
    |> Path.join("2021_1.txt")
    |> File.read!()
    |> String.split("\n", trim: true)
    |> Enum.map(&String.to_integer/1)
  end

  def depth_increases(depths) do
    depths
    |> Enum.chunk_every(2, 1, :discard)
    |> Enum.count(fn [a, b] -> a < b end)
  end

  def sliding_window(depths) do
    depths
    |> Enum.chunk_every(3, 1, :discard)
    |> Enum.map(&Enum.sum/1)
  end
end
