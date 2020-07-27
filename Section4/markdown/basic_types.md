# Basic Types
elixir supports types like 
- integer's 
- float's
- booleans
- atoms
- strings 
- lists
- tuples

---
# Integers

integers in elixir can be represented as ``` 1 ``` elixir can even be entered as binary, octal or hexadecimal numbers
```
iex> 0b11
3
iex> 0o12
10
iex> 0x1a
26
```

---

# Floats

floats in elixir are represented ``` 5.0 ``` instead of ``` 5 ```
operators such as ```/``` always returns a float.
if you want integer division and remainder you can use ```div``` and ```rem``` functions
```
iex> 3/5
0.6
iex> div(3,5)
0
iex> rem(3,5)
3
```

---

# Atoms

atoms are constants in elixir whose values are their own name they are denoted with the ``` : ``` Character.

atoms are most commonly used to display the state of an operation with atoms such as ``` :ok and :error ```

Two atoms are equal if their names are equal

```elixir 

iex> a = :elixir
:elixir
iex> b = :phoenix
:phoenix
iex> a == b
false
iex> a == :elixir
true
```

---

# Strings

- Strings in elixir are a sequence of characters that are written in double quotes

- In Elixir strings are linked lists of characters 

- Elixir supports things like string interpolation which allow you to insert a value into the middle of a string using ```#{} ```and string concatination using ``` <> ```

```elixir 
iex> hi = "Hello "
"Hello "
iex> elixir = "World!"
"World!"
iex> hi <> elixir 
"Hello World!"
iex> "#{hi}User!"
"Hello User!"
```