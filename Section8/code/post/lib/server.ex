defmodule Post.Server do
  use GenServer

  def start_link() do
    GenServer.start_link(__MODULE__, [], name: :pid)
  end

  def put(post) do
    GenServer.cast(:pid, {:put, post})
  end

  def show() do
    GenServer.call(:pid, :show)
  end

  def remove(post) do
    GenServer.cast(:pid, {:remove, post})
  end


  def init(posts) do
    {:ok, posts}
  end

  def handle_cast({:remove, post}, posts) do
    posts = Enum.reject(posts, fn x -> x == post end)
    {:noreply, posts}
  end

  def handle_cast({:put, post}, posts) do
    {:noreply, [post | posts]}
  end

  def handle_call(:show, _pid ,posts) do
    {:reply, posts, posts}
  end
end
