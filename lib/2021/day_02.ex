defmodule AdventOfCode.Y2021.Day02 do
  def part_1, do: parse_puzzle_input!() |> calculate_depth()
  def part_2, do: parse_puzzle_input!() |> calculate_aim()

  def calculate_depth(commands) do
    commands
    |> Enum.reduce(%{horizontal: 0, depth: 0}, fn
      {:up, n}, %{depth: depth} = acc -> %{acc | depth: depth - n}
      {:down, n}, %{depth: depth} = acc -> %{acc | depth: depth + n}
      {:forward, n}, %{horizontal: horizontal} = acc -> %{acc | horizontal: horizontal + n}
    end)
    |> then(&(&1.depth * &1.horizontal))
  end

  def calculate_aim(commands) do
    commands
    |> Enum.reduce(%{horizontal: 0, aim: 0, depth: 0}, fn
      {:up, n}, %{aim: aim} = acc ->
        %{acc | aim: aim - n}

      {:down, n}, %{aim: aim} = acc ->
        %{acc | aim: aim + n}

      {:forward, n}, %{aim: aim, horizontal: horizontal, depth: depth} = acc ->
        %{acc | horizontal: horizontal + n, depth: depth + aim * n}
    end)
    |> then(&(&1.depth * &1.horizontal))
  end

  def parse_puzzle_input!() do
    :code.priv_dir(:advent_of_code)
    |> Path.join("2021_2.txt")
    |> File.read!()
    |> String.split("\n", trim: true)
    |> Enum.map(fn line ->
      [direction, n] = String.split(line, ~r/\s+/)
      {String.to_atom(direction), String.to_integer(n)}
    end)
  end
end
