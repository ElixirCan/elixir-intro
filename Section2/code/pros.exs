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
