defmodule Post do
  use Application

  def start(_type, _args) do
    Post.Supervisor.start_link
  end
end
