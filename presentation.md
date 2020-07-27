## Why should you learn the Elixir programming langauge?
1. Concurrency: Can run thousands of lightweight processes which can communicate with processes on different machines.
2. Fault Tolerant: The use of supervisers which can restart processes when they fail or die
3. Fun and Easy to learn: Lots of quality video tutorials, courses, projects, and textbooks
4. Excellent choice for web development: Due to excellent Phoenix framework and ability to run thousands of processes

---
# Why functional programming?
1. Helps break down Complex problems down step by step
2. helps code redability: functions read like a reciepe to transform data
3. Concurrency: allows thousands of processes to run all at the same time

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
## Processes & Concurrency 
- Elixir has what is called Processes which can be summed up as seperate actions which can send and recieve messsages between each other.
- Elixir can run thousands of processes **Concurrently** which means that they run at the same time seperate from each other process
- Elixir Processes can be acessed through their own PID(Process ID)

---
We will show an example of a process here do not worry to much about the syntax for now. We will create a process that waits until we receive a message and outputs that message.

![inline](section3/images/concurrent.png)

---
###Concurrent module example
Here we will make another example program with an elixir script that does the same thing from the terminal

```elixir
defmodule Pros do
  def start do
    IO.puts "{__MODULE__} at your service"
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
---
## Immuntability
- Immuntability does not allow values to change in memory.
- This allows multiple processes to accsess the same value without it changing throughout your programs life span
- In elixir we are allowed to rebind variables which means we can give through away the reference to the old variable and assign it a new value 

![inline 100%](section3/images/immuntableiex.png)
