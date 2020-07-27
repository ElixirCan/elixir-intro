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
then access your function by calling the module name then . function name  ``` 
iex> Hello.hello()
"world"
```