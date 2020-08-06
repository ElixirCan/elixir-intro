defmodule Names do

  def list([head | tail]) do
    IO.puts(elem(head, 0))
    list(tail)
  end

  def list([]), do: ""
end

a = [{"David", "Snoble"}, {"Johnny", "AppleSeed"}, {"Travis", "Hardy"}]

Names.list(a)
