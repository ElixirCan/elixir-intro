# Data Structres in Elixir

Different data structures in these slides will be 
- Maps
- Tuples
- Lists 
- Keyword Lists
- Structs

---

# Maps

- Maps in elixir are a 'key-value' data structure which are created with ```%{}``` syntax

```elixir
iex(1)> map = %{"a" => 2, "b" => 5, :n => :seven}
%{:n => :seven, "a" => 2, "b" => 5}
iex(2)> map["a"]
2
iex(3)> map[:n] 
:seven
```

---

# Tuples

- Tuples are a data structure which store elements in one contiguous block of memory. Accessing tuples is very efficent because you can acsess them through index where the index starts from 0

```elixir
iex(1)> tuple = {:ok, :hello, :error, 13, "alright"}
{:ok, :hello, :error, 13, "alright"}
iex(2)> elem(tuple, 4)
"alright"
iex(3)> elem(tuple, 0)
:ok
```

---

# Lists

- Lists in elixir are setup as a linked data structure which means to access a random element you must iterate through every element before it which makes lists easy to perform recursion on

- Lists are sepearted into two parts the head and tail where the head is the first element of the list and tail is the rest of the list

---

```elixir
iex(5)> list = [1, 2, 3] 
[1, 2, 3]
iex(6)> hd(list)
1
iex(7)> tl(list)
[2, 3]
```

- This seperation allows us to perform something called tail recursion
lets create an example using this.
- We will create a function which will sum up the elememnts of numbered list
so first create a file named ```lists.exs``` this is a script file which won't be compiled but simply ran

---

- Start by creating a module called Lists with a function sum(list) which will call a private sum function with the list and a starting sum of 0

```elixir
defmodule Lists do

    def sum(list) do
        do_sum(list, 0)
    end

end
```

---

- next we will create 2 private functions called do_sum with 2 arguments the head and tail of a list and sum which will call itself with the tail of the list while adding the head to the sum.
- And another private function that takes the empty list

```elixir

defp do_sum([head | tail], sum) do
    do_sum(tail, head+sum)
end

defp do_sum([], sum) do
    sum
end
```

--- 

```elixir

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
end

list = [1, 2, 3, 4, 5, 6, 7]

output = list |> Lists.sum()

IO.puts output

```

---

now save your file and in your terminal type 
``` elixir lists.exs ``` and it should output 

```
@user% elixir lists.exs
0
1
3
6
10
15
21
28
```

---

Expanding from that same concept we could do the same with a list of words!

```elixir
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

```
due to recursion we must use Enum.reverse which swaps the order of the elements in the list to print out what we want properly.

---

now we can test out our new function in iex

```elixir
iex(1)> list = ["I", "love", "learning", "elixir!"
...(1)> ]
["I", "love", "learning", "elixir!"]
iex(2)> Lists.concat(list)
"I love learning elixir! "

```

---

# keyword lists

- keyword lists are a special type of list where each element is a two element tuple with the first element of the tuple being an atom

```elixir 

iex> list = [{:elixir, 1}, {:phoenix, 2}]
[elixir: 1, phoenix: 2]
list == [elixir: 1, phoenix: 2]
true
```

---

# Structs

- Structs are extensions of maps, Structs take the names of their module 
the syntax of accessing a struct is ``` %MODULE_NAME{} ```

- we could define by calling defstruct then adding elements 

```elixir
defmodule Test do
    defstruct language: "elixir", passion: "programming"
end

iex> temp = %Test{}
iex> temp.language
"elixir
```

