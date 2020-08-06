# Introduction to Elixir 

![inline](images/elixir.png)

---

## Why should you learn the Elixir programming langauge?
1. Concurrency: Can run thousands of lightweight processes which can communicate with processes on different machines.
2. Fault Tolerant: The use of supervisors which can restart processes when they fail or die
3. Excellent choice for web development: Due to excellent Phoenix framework and ability to take advantage of elixir's reliability
4. Fun and Easy to learn: Lots of quality video tutorials, courses, projects, and textbooks



---
# Why functional programming?
1. Functional Programming does not have the complexity of trying to understand the state of an object
2. Testing is very easy in functional programming because you do not have to worry about state of objects
3. Helps break down Complex problems down step by step
4. helps code redability: functions read like a reciepe to transform data



---
#Installing elixir on Mac
1. Install HomeBrew using 
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
``` 
in terminal
2. type brew install elixir
3. type iex into terminal to make sure it is installed

---
#Installing Elixir on Windows
1. Install Chocolaty which allows you to install packages easily
    -Open 'Command Prompt' and run as administrator and type the following command 
    ```
    @powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
    ```
2. type: 'cinst elixir' to make sure it worked type iex into command line

---

# VScode and Postgres app

These are only recommended tools that we use you do not have to use these. 

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

---
# Pattern Matching

- One of the most important components of elixir is pattern matching 
- Pattern matching allows you to have multiple functions of the same name but will choose the correct function based off of the data type 
- In other programming languages this ```=``` operator is an assignment operator. In Elixir however this is the match operator. 

In elixir when we say ``` x = 1 ``` it also means that ``` 1 = x ``` this is much different from an assignment of x = 1. 


---

Let's look at this example 

```elixir
iex> x = 10
10
iex> 10 = x
10
iex> 1 = x
** (MatchError) no match of right hand side value: 10
```

- ```10 = x``` is good comparrison but when both sides don't match a MatchError is raised because a variable can only be assigned on the left side. So with ```1 = x``` it raised a MatchError due to the fact that we aren't assigning 1 to x so it is seeing if x which is equal to 10 matches with 1

---

- Patern matching becomes very useful for tools such as breaking down complex data types
```elixir
iex> {a, b, c} = {1, 2, :atom}
{1, 2, :atom}
iex> a
1
iex> b
2
iex> c
:atom
```

---

A nice use of pattern matching in elixir is gaurd clauses 
gaurd clauses allow for simpler condition then if else statements which can create layers of complexity. Here is an example of an add function which takes only integer values.

```elixir 
iex(3)> defmodule Add do
...(3)> def sum(x,y) when x |> is_integer() and y |> is_integer() do
...(3)> x+y
...(3)> end
...(3)> end

iex(4)> Add.sum(2,3)
5
iex(5)> Add.sum(2,3.0)
** (FunctionClauseError) no function clause matching in Add.sum/2    
    
    The following arguments were given to Add.sum/2:
    
        # 1
        2
    
        # 2
        3.0
    
    iex:4: Add.sum/2

```

---

# Multi-Clause Functions 
- In elixir Pattern matching is great because you may define multiple funtions of the same name and number of arguments but will only match to the specific values that are presented to the function. lets create and example 

---

```elixir 
iex(1)> defmodule Test do
...(1)> def square(n) when n |> is_integer(), do: n*n
...(1)> def square(n) when n |> is_float(), do: n*n
...(1)> def square(_), do: IO.puts("Please enter a float or an integer")
...(1)> end

```

now lets test out our functions!

```elixir 
iex(5)> Test.square(3)
9
iex(6)> Test.square(1.5)
2.25
iex(7)> Test.square(:ok)
Please enter a float or an integer
```
---

Now another example of pattern matching which you will use in development will be to match different messages so here we will create a function which will check the status of a tuple and if the status is ok we will display the message

we will define our module Match and then create two functions to match with our tuple

---

```elixir
iex(8)> defmodule Match do                                        
...(8)> def msg({:ok, msg}), do: "Woah the msg is working! #{msg}"
...(8)> def msg({_, _}), do: "Error please fix!"                  
...(8)> end                                                       
warning: redefining module Match (current version defined in memory)
  iex:8

{:module, Match,
 <<70, 79, 82, 49, 0, 0, 5, 244, 66, 69, 65, 77, 65, 116, 85, 56, 0, 0, 0,
   170, 0, 0, 0, 18, 12, 69, 108, 105, 120, 105, 114, 46, 77, 97, 116, 99,
   104, 8, 95, 95, 105, 110, 102, 111, 95, 95, 10, ...>>, {:msg, 1}}
iex(9)> a = {:erifjos, 23}
{:erifjos, 23}
iex(10)> a |> Match.msg
"Error please fix!"
iex(11)> a = {:ok, 23}  
{:ok, 23}
iex(12)> a |> Match.msg
"Woah the msg is working! 23"
```

