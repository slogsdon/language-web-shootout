defmodule App.Mixfile do
  use Mix.Project

  def project do
    [app: :app,
     version: "0.0.1",
     elixir: "~> 1.0.0",
     deps: deps]
  end

  def application do
    [applications: [],
     mod: {App, []}]
  end

  defp deps do
    [ {:cowboy, "~> 1.0.0"},
      {:plug, "~> 0.8.1"} ]
  end
end
