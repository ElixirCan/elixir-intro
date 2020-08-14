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

- Tuples are a data structure which store elements in one contiguous block of memory. Accessing tuples is very efficent because you can access them through index where the index starts from 0

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

- Lists can be created using ```[]``` syntax with comma seperated 

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
- We will create a function which will sum up the elements of numbered list
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
    do_concat(list, "")
  end

  def do_concat([head | tail], word) do
    do_concat(tail, word<>" "<>head)
  end

  def do_concat([], word) do
    word
  end

```

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

---

Now lets do make a function that could have a real use case in real life lets consider if we have a list where each element in the list is a tuple of size 2 with the first entry being the first name and the second entry being the last name ex. ``` [{"David", "Random"}, {"John", "Apple"}] ```

Now I want to iterate through the list and return the first name of each person lets get started. open a new file called names.exs and we are going to define a module with 2 functions 

---

In your file copy these in 

```elixir
defmodule Names do

  def list([head | tail]) do
    IO.puts(elem(head, 0))
    list(tail)
  end

  def list([]), do: ""
end

a = [{"David", "Snoble"}, {"Johnny", "AppleSeed"}, {"Travis", "Hardy"}]

Names.list(a)

```

---
In your visual studio terminal once you are in the correct directory you can type the command elixir names.exs and it should output 

David
Johnny
Travis

or whatever names you put in your tuple

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

---

Pattern matching is one of elixir's most powerful features and removes the need for crazy and very confusing if then blocks in your functons and allows you to simply create many smaller functions which will take advantage of the usefulness of pattern matching.

---

# Functions in elixir 

- In Elixir there are modules which hold functions and functions which transform data.

- Modules can be created by calling 

```elixir
defmodule Test do

end
```

---

- named functions are created inside your module with 
``` def func_name(params) do end ```
- lets create a test function in IEx!

```elixir

iex> defmodule Create do
...>def add(a,b) do
...>a+b
...>end
...>end
{:module, Create,
 <<70, 79, 82, 49, 0, 0, 4, 212, 66, 69, 65, 77, 65, 116, 85, 56, 0, 0, 0, 126,
   0, 0, 0, 14, 13, 69, 108, 105, 120, 105, 114, 46, 67, 114, 101, 97, 116, 101,
   8, 95, 95, 105, 110, 102, 111, 95, 95, ...>>, {:add, 2}}

iex> Create.add(1,3)
4
```

---
- Elixir functions are defined by two things name and arity where the name is the name of the functin and arity is the number of arguemnts so our add function has an arity of 2 so we would call it add/2

- In elixir there are anonymous functions which are functions without names you can create one by typing 
```fn _params -> _definition end ```

- Anonymous functions are often used when other functions take a function as a parameter


---

- with anonymous functions we can create our add function anonymously! 

```elixir
iex> add = fn a, b -> a+b end
iex> add.(1,3)
4
```

---

- In elixir ``` & ``` is the capture operator which allows us to write anonymous functions

```elixir
iex> add1 = &(&1 + &2)
iex> add1.(13,12)
25
```

using this syntax we created an anonymous function that does the same operation!

--- 

# Recursive functions

- Recursive functions are functions that call themselves to perform an operation until a base case is reached.

- for example in our previous section we created a list fuction which uses tail recursion to sum up the numbers in a list

---

```elixir
iex(1)> defmodule Recursion do
...(1)> def dec(0), do: 0
...(1)> def dec(n) do
...(1)> IO.inspect(n)
...(1)> Recursion.dec(n-1)
...(1)> end
...(1)> end
{:module, Recursion,
 <<70, 79, 82, 49, 0, 0, 5, 88, 66, 69, 65, 77, 65, 116, 85, 56, 0, 0, 0, 147,
   0, 0, 0, 16, 16, 69, 108, 105, 120, 105, 114, 46, 82, 101, 99, 117, 114, 115,
   105, 111, 110, 8, 95, 95, 105, 110, 102, ...>>, {:dec, 1}}
iex(2)> Recursion.dec(5)
5
4
3
2
1
0

```

---

In math there is a famous sequence called the fibonacci sequence where a number in the sequence is defined by the addition of the previous two numbers in the sequence for example position 2 in the seqeuence is 0 + 1 = 1 so position 3 is 1 + 1 = 2 and so on. 

There is a very elegant way to duplicate this sequence using recursion (Warning this function is computational expensive!!)

open up visual studio and create a new file called fib.ex

once in the file create a module called Fib

```elixir 
defmodule fib do

end
```

---

In recursion it is important to have a base case so our base case will be position 0 so our first function will be called fib(0) = 0 and fib(1) = 1
so define these two functions inside our module.

```elixir
def fib(0), do: 0
def fib(1), do: 1

```

Now how will we create the nth sequence? Simple we will use recursion! lets add fib(n-1) with fib(n-2) 

```elixir 
def fib(n), do: fib(n-1) + fib(n-2)
```

save this file and run the command ```iex fib.ex``` in your terminal to compile the file

---

Once loaded we can call our fib function with Fib.fib()

```elixir
iex> Fib.fib(3)
2
iex> Fib.fib(10)
55
```

Lets list all of our numbers in the fib sequence from 1 to 10

```elixir
iex> IO.inspect(Enum.map(0..10, fn i-> Fib.fib(i) end))
[0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
[0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
```

---

There is a lot to unpack in this iex command ``` IO.inspect(Enum.map(0..10, fn i-> Fib.fib(i) end))``` so lets start with the IO.inspect/1 

- This function takes 1 argument and shows us our argument in the terminal

- The Enum.map/2 takes two arguments a range (1..10) and a function 

- inside Enum.map our second argument is an anonymous function which will simply call our fib function for the specified i value 

- so all this function is doing is calling fib 10 times with the values from 1..10


---

# The pipeline operator

- In elixir the pipeline operator is a simple shorthand syntax which makes code cleaner to look at when you are calling multiple funcitons at once

- The pipe operator ``` |> ``` works by having your innermost argument first followed by your next argument all the way until your outer function call is last 

---

for example we can write

```elixir
IO.inspect(Enum.map(0..10, fn i-> Fib.fib(i) end))
```
as 

```elixir
Enum.map(0..10, fn i-> Fib.fib(i) end) |> IO.inspect()
```

or for a more clear example we can write 

```elixir
iex> "I Love Elixir!" |> String.upcase() |> String.split()
["I", "LOVE", "ELIXIR!"]
```

---

## Processes & Concurrency 
- Elixir has what is called Processes which can be summed up as seperate actions which can send and recieve messsages between each other.
- Elixir can run thousands of processes **Concurrently** which means that they run at the same time seperate from each other process
- Elixir Processes can be acessed through their own PID(Process ID)

---
We will show an example of a process here do not worry to much about the syntax for now. We will create a process that waits until we receive a message and outputs that message.

```elixir
iex(18)> pid = spawn(fn -> IO.puts "waiting for messages"
...(18)> receive do
...(18)> msg -> IO.puts "Received #{inspect msg}"
...(18)> end end)
waiting for messages
#PID<0.172.0>
iex(19)> send(pid, "Hello Process!")
Received "Hello Process!"
"Hello Process!"
```

---

### Concurrent module example

Here we will make another example program with an elixir script that does the same thing from the terminal

```elixir
defmodule Pros do
  def start do
    IO.puts "#{__MODULE__} at your service"
    loop()
  end
  def loop do
    receive do
      msg -> IO.puts msg
    end
    loop()
  end
end

pid = spawn(Pros, :start, [])
send(pid, "This is my first message")
send(pid, "This is my new message")
```

```
elixir pros.exs
Elixir.Pros at your service
This is my first message
This is my new message

```
---

## Immuntability
- Immuntability does not allow values to change in memory.
- This allows multiple processes to accsess the same value without it changing throughout your programs life span
- In elixir we are allowed to rebind variables which means we can give through away the reference to the old variable and assign it a new value 

```elixir

iex(21)> a = 3
3
iex(22)> IO.puts a
3
:ok
iex(23)> a + 3
6
iex(24)> IO.puts a
3
:ok

```

---

# GenServer and OTP

- OTP is a framework for building scalable and distributed systems. which menas that it is used to tackle solve problems over many systems

- Genserver is a module which allows you to have control over your processes that can be used to keep state, exectuce code asynchronously which just means that code can be executed sepeartly from the main program.

- Supervisors in elixir allow us to manage our processes and make sure that everything is running properly 

---

# Genserver message example 

- The best way to learn about genserver is to actually just code with it and follow along so lets set up a simple genserver which will allows us to cast messages and see what has been posted

- boot up vscode and make a folder called server inside create two files server.ex and supervisor.ex

first we focus our server file 

first import GenServer module with use GenServer and then create two functions called init and start_link
init will return the state of our posts and start_link will start a new genserver process

```elixir 

defmodule Post.Server
  use GenServer

  def init(posts) do
    {:ok, posts}
  end

  def start_link() do
    GenServer.start_link(__MODULE__, [])
  end
end
```

--- 

GenServer.start_link will return a tuple of ``` {:ok, pid}``` 

next we will create a show function to show our list of posts

```elixir
def show(pid) do
  GenServer.call(pid, :show)
end

def handle_call(:show, _pid, posts) do
  {:reply, posts, posts}
end
```

The show function makes a genserver call which calls the atom :show 
GenServer.call is a synchronous function
we must make a second function to handle the call of the genserver
so we make a handle_call function which will pattern match with the :show atom and will display the posts

---

now in iex if we run iex server.ex 
we can start our process by matching a tuple with 

```elixir
iex> {:ok, _nameofpid} = Post.Server.start_link()
{:ok, #PID<0.177.0>}
iex> Post.Server.show(pid)
[]
```
Now lets add the ability to post messages. 

```elixir
def put(pid, post) do
  GenServer.cast(pid, {:put, post})
end

def handle_cast({:put, post}, posts) do
  {:noreply, [post | posts]}
end
```

---

The GenServer.cast function is a asychronous function and we simply append our new post to the list

in iex we can now add new posts to our list by calling 

```elixir
iex> Post.Server.put(pid, "Hello")
:ok
iex> Post.Server.show(pid)
["Hello"]
```

--- 

Now for functionality lest create a remove function to remove posts

```elixir 
def remove(pid, post) do 
  GenServer.cast(pid, {:remove, post})
end

def handle_cast({:remove, post}, posts) do
  posts = Enum.reject(posts, fn x -> x == post end)
  {:noreply, posts}
end

```
this will remove posts from our list by using Enum.reject to remove any post that matches the post.

we use the Enum.reject function to remove all posts on the form that match the post you send it

---

# Adding supervisors

now we will create our second file supervisor.ex and our whole file will look like this 

```elixir
defmodule Post.Supervisor do
  use Supervisor

  def start_link() do
    Supervisor.start_link(__MODULE__, [])
  end

  def init(_) do
    children = [
      worker(Post.Server, [])
    ]

    supervise(children, strategy: :one_for_one)
  end
end

```

---

What is important in this file is that we include the supervisor module and create a start link function which calls supervisor.start_link with our module name and an empty list

Our init function has one worker which is Post.Server and starts it with an empty list. then at the bottom we call supervise function with the our children and use the stategy :one_for_one which means that when one process dies we reset that process.

---

now to flesh this out into an application we need to create a lib directory and move supervisor.ex and server.ex into the lib folder as well as make a new file called post.ex

outside of the folder create a file called mix.exs this file will compile all the neccessary files so we don't have to compile them individually.

mix.exs file will look like

---

```elixir
defmodule Post.Mixfile do
  use Mix.Project

  def project do
    [
      app: :post,
      version: "0.1.0",
      elixir: "~> 1.10.4",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {Post, []}
    ]
  end

  defp deps do
    []
  end
end

```

---

Now our post.ex file will use the application module which will start up our supervisor which shall start up our program

that file will look like 

```elixir
defmodule Post do
  use Application

  def start(_type, _args) do
    Post.Supervisor.start_link
  end
end

```

now all we have to do is be in the post directory and type ```iex -S mix```
then we can use our functions Post.Server without worrying about the state of the process our starting up the process!

---

# Additional Resources for Elixir

Great textbook resource 
- Dave Thomas Programming Elixir 1.6 https://pragprog.com/titles/elixir16/programming-elixir-1-6/
Video Course resource
- Alchemist Camp https://alchemist.camp