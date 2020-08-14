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
