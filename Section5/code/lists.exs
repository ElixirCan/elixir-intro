defmodule Lists do

  def sum(list) do
    do_sum(list, 0)
  end

  defp do_sum([head | tail], sum) do
    IO.puts(sum)
    do_sum(tail, sum + head)
  end

  defp do_sum([], sum) do
    sum
  end

  def concat(list) do
    list = Enum.reverse(list)
    do_concat(list, "")
  end

  def do_concat([head | tail], word) do
    do_concat(tail, head<>" "<>word)
  end

  def do_concat([], word) do
    word
  end
end

list = [1, 2, 3, 4, 5, 6, 7]
list2 = ["I", "love", "learning", "elixir!"]

output = list |> Lists.sum()

IO.puts output

output2 = list2 |> Lists.concat()
IO.puts output2
