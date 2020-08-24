# Installation 

#Installing elixir on Mac
1. Install HomeBrew using 
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
``` 
in terminal
2. type brew install elixir

3. type iex into terminal to make sure it is installed

---

# Installing Elixir on Windows

to install elixir on windows go to the elixir website and follow the installer https://elixir-lang.org/install.html#windows

---

# VScode and Postgres app

These are recommended tools. 

to download vscode go to https://code.visualstudio.com/download and click download for whatever system you are on. 

While this is going on please download postgres app from 
https://postgresapp.com/downloads.html

---

# IEx Elixir's interactive shell

IEx allows you test code like evaluating experssions or testing funcions from on of your programs

to start iex open up your terminal and type in ```iex```

```elixir
iex>
```

In IEx we can type expressions like 

```elixir
iex> 133 - 33
100
iex> "Hello" <> " World!"
"Hello World!"
```

---

IEx also allows us to do things such as 

```elixir
iex> a = [1,2,3]
[1, 2, 3]
iex> Enum.reduce(a, 0, fn x, acc -> x + acc end)
6
```

What this code does is assigns a list to a and we use the 
```Enum.reduce/3``` function to enumerate through the items in our list

---

# Basic Types
elixir supports types like 
- integer's 
- float's
- atoms
- booleans
- strings 

---
# Integers

- integers in elixir can be represented as ``` 1 ``` elixir can even be entered as binary, octal or hexadecimal numbers

``` elixir
iex> 0b11
3
iex> 0o12
10
iex> 0x1a
26
```

---

# Floats

- floats in elixir are represented ``` 5.0 ``` instead of ``` 5 ```
- operators such as ```/``` always returns a float.
- if you want integer division and remainder you can use ```div``` and ```rem``` functions

``` elixir 
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

# Booleans

- Elixir has three Boolean operators 
``` or and not ``` they expect an argument to evaluate.

- The keywords ```true, false ``` are actually atoms in elixir

```elixir
iex> true == :true 
true 
```

```elixir 

iex> true or false
true
iex> true and false
false
iex> true and not false
true

```
---

# Boolean Comparison operators

- Elixir has the ``` and ```, ```or``` and ```not``` operators as well as ```&&```, ``` || ``` and ``` ! ``` operators

- Elixir also comes with comparison operators like ``` == ```, ``` != ``` ``` < ```, ``` > ```, ``` <= ```, ``` >= ``` 

```elixir
iex> "hi" == "hi"
true
iex> 21 != 132
true
iex> 10 == 3
false

```
---

# Strings

- Strings in elixir are a sequence of characters that are written in double quotes

- In Elixir strings are linked lists of characters 

- Elixir supports things like string interpolation which allow you to insert a value into the middle of a string using ```#{} ```and string concatination using ``` <> ```

---
# String example

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


---

# Creating first Elixir file

to create a new elixir file open up visual studio and create a new file named hello.ex 
then start by creating what is known as a module in elixir.
Modules hold collections of functions to use for your program
Modules must be named with a capital letter otherwise you will run into compolation errors

---

```elixir
defmodule Hello do 
    def hello do
        "world"
    end
end
```


Then save and start your program using ```iex hello.ex```
then access your function by calling the module name then . function name.
```elixir 
iex> Hello.hello()
"world"
```
