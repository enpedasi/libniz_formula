defmodule LeibnizFormula do
  def calc() do
    s = 0..100_000_000
    |> Flow.from_enumerable(stages: 6)
    # |> Flow.partition
    |> Flow.reduce( fn -> %{val: 0} end, fn (x, acc) -> %{val: acc[:val] + (:math.pow(-1, x) / (2*x+1) )} end)
    |> Flow.emit(:state)
    |> Enum.to_list
    |> Enum.map( fn %{ val: n } -> n end )
    |> Enum.sum
    s * 4
  end
end

