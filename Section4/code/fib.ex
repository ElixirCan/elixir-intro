defmodule Fib do

  def fib(0), do: 0
  def fib(1), do: 1

  def fib(n) when n |> is_integer and n > 1, do: fib(n-1) + fib(n-2)
end
